"""Reproducible 16px art build. Pillow only, no network, no runtime generator.

Named semantic sprites + cardinal edge masks. Reuses CC0 EverRogue silhouettes,
recolors into a restrained palette, and draws original terrain/props/fauna.
Run from any cwd: python tools/build_exploration_atlas.py [--check]
"""
from pathlib import Path
import hashlib
import io
import json
import sys
from PIL import Image, ImageDraw

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'assets/tilesets/exploration'
SOURCE = ROOT / 'assets/tilesets/ever_rogue/EverRogueTileset 1.0/EverRogueTileset 1.0 Packed Alpha.png'
P = dict(ink='#15252d', shadow='#20363c', soil='#364944', grass='#405a45', moss='#63804d',
         leaf='#8ca464', sand='#8b7955', light='#baa371', wall='#536570', steel='#829395',
         cream='#e4d4a5', water='#234c60', wave='#46768a', rust='#a96446', orange='#e7a252',
         red='#cf6559', cyan='#79d6c1', white='#f0edd7')
tiles, metadata = [], {}

def blank(bg=None):
    im = Image.new('RGBA', (16, 16), bg or (0, 0, 0, 0))
    return im, ImageDraw.Draw(im)

def add(name, im, source='original pixel geometry'):
    metadata[name] = dict(index=len(tiles), source=source)
    tiles.append(im)

def imported(name, x, y, colors):
    im = Image.open(SOURCE).convert('RGBA').crop((x*16, y*16, x*16+16, y*16+16))
    for yy in range(16):
        for xx in range(16):
            r,g,b,a = im.getpixel((xx,yy))
            if a:
                lum=(r+g+b)/3
                color=colors[0] if lum < 60 else colors[1] if lum < 170 else colors[2]
                im.putpixel((xx,yy), tuple(bytes.fromhex(color[1:]))+(a,))
    add(name,im,f'EverRogue 1.0 Packed Alpha tile ({x},{y}); three-tone recolor')

for v in range(8):
    im,d=blank(P['soil'])
    # Tuft and stone clusters have direction/shape, not random colored noise.
    for x,y in ([(2+v,3),(10,9-v)] if v < 3 else []):
        d.line((x,y,x+2,y),fill=P['grass'])
        d.point((x+1,y-1),fill=P['grass'])
    if v==2: d.line((9,3,11,3),fill=P['shadow'])
    add('ground'+str(v),im)
for name,color in [('floor',P['wall']),('gravel',P['sand'])]:
    im,d=blank(P['shadow'] if name=='floor' else P['soil'])
    if name=='floor':
        d.rectangle((0,0,14,14),fill='#3f5157');d.line((1,0,14,0),fill=P['wall'])
        for x,y in [(2,2),(12,12)]:d.point((x,y),fill=P['steel'])
    else:
        for x,y in [(2,3),(9,2),(6,10),(12,12)]:d.line((x,y,x+2,y),fill=color)
    add(name,im)
for form,base,edge in [('industrial','#404b4d','#8b7955'),('observatory','#354b57','#46768a'),('woodland','#394c40','#63804d'),('impact','#554b43','#a96446')]:
    im,d=blank(base)
    d.line((0,0,15,0),fill=edge);d.line((0,0,0,15),fill=P['shadow'])
    if form=='industrial':
        d.line((0,8,15,8),fill=P['shadow']);d.point((2,2),fill=P['steel']);d.point((13,10),fill=P['steel'])
    elif form=='observatory':d.rectangle((3,3,12,12),outline=edge)
    elif form=='woodland':
        for y in [3,7,11]:d.line((1,y,14,y),fill=P['soil'])
    else:d.line((4,0,7,5,5,8,10,13,9,15),fill=P['ink'])
    add('floor_'+form,im)
for kind in ['path','water','wall']:
    for mask in range(16):
        im,d=blank(P['sand'] if kind=='path' else P['water'] if kind=='water' else P['shadow'])
        if kind=='wall':
            for y in [1,7,13]:
                d.rectangle((0,y,15,min(15,y+4)),fill=P['wall']);d.line((0,y,15,y),fill=P['steel'])
                d.line(((4 if y==7 else 10),y,(4 if y==7 else 10),min(15,y+4)),fill=P['shadow'])
        elif kind=='water':
            for x,y in [(1,4),(9,10)]:d.line((x,y,x+4,y),fill=P['wave'])
        else:
            d.line((3,6,5,6),fill=P['light']);d.line((10,12,12,12),fill=P['light'])
        # Bits are exposed N,E,S,W. Rendering derives edges from real neighbors.
        border=P['moss'] if kind=='path' else P['sand'] if kind=='water' else P['ink']
        for bit,box in [(1,(0,0,15,1)),(2,(14,0,15,15)),(4,(0,14,15,15)),(8,(0,0,1,15))]:
            if mask&bit:d.rectangle(box,fill=border)
        add(kind+str(mask),im)

im,d=blank()
d.ellipse((2,12,14,15),fill=P['ink']);d.rectangle((7,10,9,14),fill=P['sand'])
d.polygon([(1,8),(3,3),(6,3),(7,0),(11,2),(14,5),(14,10),(11,12),(4,11)],fill=P['ink'])
d.polygon([(2,7),(4,4),(7,4),(8,2),(11,3),(13,6),(12,10),(6,10),(3,9)],fill=P['moss'])
d.line((5,4,7,4),fill=P['leaf']);d.line((9,5,11,5),fill=P['leaf']);d.line((4,8,6,8),fill=P['leaf'])
add('tree',im)
imported('player',3,12,[P['ink'],P['cyan'],P['white']])
imported('control',2,8,[P['ink'],P['steel'],P['cyan']])
imported('record',7,10,[P['ink'],P['sand'],P['cream']])
imported('resource',0,12,[P['ink'],P['sand'],P['orange']])
imported('lookout',4,7,[P['ink'],P['steel'],P['cream']])
imported('scar',0,9,[P['ink'],P['rust'],P['orange']])

for name in ['door','door_open','sealed','rubble','unique','worksite','exit','route','branches','stone_cache',
             'camp','trail_sign','workbench','bridge','bridge_used','supply_cache','shelter','tool_rack','waystone',
             'flowers','stump','cart','scrap','fence','crate','boulder','hazard','corpse']:
    im,d=blank()
    d.ellipse((2,12,14,15), fill=P['ink'])
    if name in ['door','door_open','sealed']:
        d.rectangle((2,1,13,14),fill=P['ink']);d.rectangle((3,1,12,2),fill=P['steel'])
        d.rectangle((3,3,5 if name=='door_open' else 12,13),fill=P['rust'])
        if name!='door_open':
            d.line((6,3,6,13),fill=P['sand']);d.point((10,8),fill=P['cream'])
        if name=='sealed':d.line((3,4,12,12),fill=P['steel'],width=2)
    elif name in ['rubble','stone_cache','boulder','scrap','route']:
        for x,y in [(2,8),(7,5),(9,10)]:
            d.polygon([(x,y+4),(x,y+1),(x+3,y),(min(15,x+5),y+3),(x+4,y+5)],fill=P['wall'],outline=P['ink'])
            d.line((x+1,y+1,x+3,y+1),fill=P['steel'])
        if name=='route':d.line((2,3,13,3),fill=P['orange'],width=2)
    elif name in ['resource','supply_cache','crate','cart']:
        d.rectangle((2,5,13,12),fill=P['sand'],outline=P['ink']);d.line((3,6,12,11),fill=P['light'])
        d.line((7,5,7,12),fill=P['rust']);d.line((2,8,13,8),fill=P['ink'])
        if name=='cart':
            d.rectangle((2,12,4,14),fill=P['steel']);d.rectangle((11,12,13,14),fill=P['steel'])
    elif name in ['camp','shelter']:
        d.polygon([(1,12),(7,3),(14,12)],fill=P['moss'],outline=P['ink'])
        d.polygon([(7,4),(7,12),(12,12)],fill=P['leaf']);d.polygon([(7,7),(5,12),(9,12)],fill=P['ink'])
        if name=='camp':d.rectangle((1,13,3,14),fill=P['orange'])
    elif name in ['trail_sign','waystone','lookout']:
        d.rectangle((7,6,8,14),fill=P['sand']);d.polygon([(2,2),(11,2),(14,5),(11,7),(2,7)],fill=P['light'],outline=P['ink'])
        d.line((5,4,10,4),fill=P['shadow'])
    elif name in ['bridge','bridge_used','fence']:
        for x in [2,7,12]:d.rectangle((x,3,x+1,13),fill=P['sand'])
        for y in [5,10]:d.line((1,y,14,y),fill=P['light'],width=2)
        if name=='bridge':d.line((3,3,12,12),fill=P['orange'])
        if name=='bridge_used':d.line((3,3,12,12),fill=P['cyan'])
    elif name in ['workbench','tool_rack']:
        d.rectangle((2,6,13,9),fill=P['sand'],outline=P['ink']);d.line((3,10,3,14),fill=P['rust']);d.line((12,10,12,14),fill=P['rust'])
        d.line((6,5,11,2),fill=P['steel'],width=2);d.line((5,6,8,8),fill=P['cream'])
    elif name in ['branches','stump']:
        d.line((3,12,11,5),fill=P['sand'],width=2);d.line((7,8,6,4),fill=P['light']);d.line((9,7,13,8),fill=P['sand'])
        if name=='stump':d.ellipse((4,6,12,12),fill=P['sand']);d.ellipse((5,5,11,8),fill=P['light'])
    elif name=='flowers':
        for x,y in [(3,9),(9,4),(12,10)]:
            d.line((x,y,x,y+3),fill=P['moss']);d.line((x-1,y,x+1,y),fill=P['cream']);d.point((x,y-1),fill=P['orange'])
    elif name=='exit':
        d.rectangle((1,1,3,14),fill=P['steel']);d.rectangle((12,1,14,14),fill=P['steel']);d.rectangle((2,1,13,3),fill=P['cream'])
        d.polygon([(7,6),(10,9),(7,12),(7,10),(5,10),(5,8),(7,8)],fill=P['cyan'])
    elif name=='unique':
        d.polygon([(8,2),(13,6),(11,12),(5,13),(2,7)],fill=P['wave'],outline=P['cream'])
        d.line((5,7,10,5),fill=P['cyan']);d.point((8,9),fill=P['white'])
    elif name in ['hazard','worksite']:
        d.polygon([(8,2),(14,13),(1,13)],fill=P['orange'],outline=P['ink']);d.line((8,6,8,9),fill=P['ink'],width=2);d.point((8,11),fill=P['ink'])
    else:
        d.line((3,8,12,12),fill=P['steel'],width=2);d.line((3,12,12,8),fill=P['steel'],width=2)
    add(name,im)

# Distinct catalog fauna silhouettes, anchored to a shared baseline.
for name in ['rat','feral_dog','wolf','boar','giant_beetle','cave_lizard','giant_spider','giant_crab','feral_ape','raider','armored_raider']:
    im,d=blank();d.ellipse((1,11,14,15),fill=P['ink'])
    color=P['rust'] if name in ['rat','boar','feral_dog'] else P['steel'] if name=='wolf' else P['moss']
    if name in ['giant_beetle','giant_spider','giant_crab']:
        for y in [5,8,11]:
            d.line((1,y-1,5,y+1),fill=color);d.line((10,y+1,14,y-1),fill=color)
        d.ellipse((4,3,11,12),fill=color,outline=P['ink']);d.line((7,4,7,11),fill=P['light'])
        if name=='giant_crab':
            d.rectangle((0,1,3,5),fill=P['rust']);d.rectangle((12,1,15,5),fill=P['rust'])
    elif name in ['raider','armored_raider','feral_ape']:
        d.rectangle((5,2,10,6),fill=P['sand']);d.rectangle((4,7,11,11),fill=color)
        d.line((4,7,2,11),fill=P['cream'],width=2);d.line((11,7,13,11),fill=P['cream'],width=2)
        for x in [5,10]:d.line((x,11,x,14),fill=color,width=2)
    else:
        small=name=='rat'
        d.ellipse((3,7 if small else 5,11,12),fill=color,outline=P['ink'])
        d.polygon([(9,6),(13,6),(15,10),(11,11)],fill=color)
        if name in ['wolf','feral_dog']:d.polygon([(10,7),(10,2),(13,6)],fill=color)
        for x in [4,10]:d.line((x,10,x,14),fill=color,width=2)
        d.line((3,10,1,7,0,9),fill=color)
        if name=='boar':d.line((13,11,15,9),fill=P['cream'])
        if name=='cave_lizard':d.line((4,10,0,14),fill=P['leaf'],width=2)
    d.point((11 if name not in ['giant_beetle','giant_spider','giant_crab'] else 6,7 if name not in ['giant_beetle','giant_spider','giant_crab'] else 4),fill=P['red'])
    add(name,im)

atlas=Image.new('RGBA',(16*16,16*((len(tiles)+15)//16)))
for i,t in enumerate(tiles):atlas.paste(t,((i%16)*16,(i//16)*16))
buf=io.BytesIO();atlas.save(buf,format='PNG',optimize=False); png=buf.getvalue()
manifest=dict(tile_size=16,columns=16,palette=P,source_sha256=hashlib.sha256(SOURCE.read_bytes()).hexdigest(),
              atlas_sha256=hashlib.sha256(png).hexdigest(),tiles=metadata)
encoded=(json.dumps(manifest,ensure_ascii=False,indent=2)+'\n').encode()
if '--check' in sys.argv:
    assert (OUT/'exploration.png').read_bytes()==png
    assert (OUT/'atlas.json').read_bytes()==encoded
    print(f'PASS atlas reproducible: {len(tiles)} named 16px tiles')
else:
    OUT.mkdir(parents=True,exist_ok=True)
    (OUT/'exploration.png').write_bytes(png);(OUT/'atlas.json').write_bytes(encoded)
    print(f'Built {len(tiles)} tiles: {OUT}')
