#!/usr/bin/env python3
"""Generate simple SVG flow diagrams for docs/specs with no third-party deps."""

from html import escape
from pathlib import Path
import argparse

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "docs" / "diagrams"

FLOWS = {
    "character_overview": ("Character Overview — read-only presentation (M032)", [
        "C → CharacterScreen 열기 / modal gameplay 입력 차단",
        "현재 Actor: identity · HP · six attributes / stat breakdown",
        "기본 attack: resolved governing primary · proficiency · body query",
        "Body: Σ max(0, weight) / 실제 weight 합 × max(0, raw armor)",
        "MoveAction(RIGHT).cost_breakdown → 기존 ActionCostResolver",
        "scalar value model → 기본 결과 / hover 빠른 설명",
        "선택 → Inspector 열림 / Overview 축소 → 새 query · 상세 provenance",
        "Inspector Close → Overview 전체 폭 · C / Esc → 화면 닫기 / gameplay 불변"
    ]),
    "time_scheduler": ("Action-Cost 시간 스케줄러", [
        "플레이어 Action 성공", "Player ready time += cost",
        "ready time < Player 인 NPC 선택", "NPC Action 1회 실행 + ready time 증가",
        "조건 재검사", "더 이른 NPC 없음 → world_time = Player ready", "플레이어 입력 대기"
    ]),
    "action_pipeline": ("공통 Action 실행 파이프라인", [
        "플레이어 입력 / AI가 TimeAction 선택", "perform_action 공통 진입",
        "등록·생존·현재 차례 검증", "can_execute 검증",
        "실패 → 시간 0 / RNG 0 / 이벤트 0", "성공 → 공통 resolver get_cost > 0", "execute → CombatEvent",
        "로그 기록 + scheduler.advance", "플레이어 Action이면 NPC 응답 루프"
    ]),
    "combat_resolution": ("근접 전투 판정", [
        "AttackAction 유효성: 생존·기능·근접·코너",
        "base ability_rule / sparse Weapon Action override → 단일 primary",
        "Actor → StatResolver → EffectStore → resolved score → int modifier",
        "d20 + 단일 modifier + proficiency + situation ≥ 10 + resolved DEX mod",
        "Miss → 피해 0", "Hit → 가중치 기반 피격 부위 선택",
        "선택 부위 armor 여부", "effective armor로 Full / Partial / Bypass",
        "전달 피해를 부위 integrity에 적용", "같은 전달 피해를 HP에 1회 적용", "HP 0 → 사망"
    ]),
    "body_injury": ("신체 부위와 기능 효율", [
        "part current / maximum", "current ≤ 0 → Disabled (0.0)",
        "0 < current ≤ 50% → Damaged (0.5)", "그 외 Healthy (1.0)",
        "부모 Disabled면 자식 효율 0", "locomotion 부위 효율 평균",
        "Move: ceil((base / speed / efficiency) × (1 + Percent 합) + Flat 합)",
        "capability + required count → 최적 기능 부위 선택\n부족 → 공격 불가 / 선택 효율 0.5 → 명중 -2"
    ]),
    "action_cost_resolution": ("Action 비용 · Stat 해석 (M031)", [
        "Action 표준 base cost", "Move: Actor → EffectStore stat (PERCENT → FLAT)",
        "Move: 기존 Body locomotion_efficiency",
        "Adjusted base × (1 + intrinsic/external Percent 합) + Flat 합",
        "최종 한 번 ceil → 최소 1 (invalid → 거부)",
        "source · effect_id · source_id · operation · value · result",
        "기존 perform_action → TimeScheduler ready_time"
    ]),
    "tactical_ai": ("설명 가능한 전술 AI", [
        "상태 읽기: 거리·HP/fear·aggression·신체", "후보 생성: Attack / Approach / Door / Retreat / Wait",
        "base score + 동적 factors", "can_execute 및 cost로 불가능 후보 제거",
        "최고 score 선택 (동점: 먼저 생성)", "reason_codes / factors / visible_cue 보존",
        "공통 Action 파이프라인으로 실행"
    ]),
    "procgen_pipeline": ("현재 지역 절차 생성 파이프라인", [
        "world seed + GenerationSettings", "SeedDeriver('terrain') → Simplex fBM 숲/지면",
        "SeedDeriver('path') → 북→남 보장 경로", "5×5 ruin 후보 검색: 경로/거리/가장자리 제약",
        "SeedDeriver('landmark','ruin') → 후보 1개 선택", "문자 rows (. T # R)",
        "GeneratedMapCombatGame: 장애물·스폰·연결성 검증", "플레이 가능한 전투 맵"
    ]),
    "combat_batch": ("Headless 전투 배치 측정기", [
        "runs / seed / action·time limit", "seed별 production CombatSimulationGame 생성",
        "AI 선택 → perform_action", "CombatEvent에서 행동·실제 HP 피해 집계",
        "승리 / stalled / simulation_error 검사", "다음 seed 반복",
        "승률·평균 행동·시간·피해·행동 종류 aggregate"
    ]),
    "threat_rating": ("Threat Rating — TR-v0", [
        "몬스터 데이터 + 신체 + Action + AI",
        "정적 특징 벡터: 공격 · 생존 · 기동 · 특수성",
        "정적 prior — 빠른 예상과 sanity check",
        "Production combat batch + side swap + 여러 기준군",
        "승패 · 피해 · 행동수 · world time · 기능 상실 측정",
        "정적 예측과 실제 성능 차이 보정",
        "모델 버전별 Threat Rating 산출",
        "미검증 값은 null — 임의 숫자 금지"
    ]),
}

def svg(title, labels):
    width = 760
    box_w, box_h, gap = 620, 62, 34
    x = (width-box_w)//2
    height = 80 + len(labels)*(box_h+gap) + 20
    s=[f'<svg xmlns="http://www.w3.org/2000/svg" width="{width}" height="{height}" viewBox="0 0 {width} {height}">',
       '<defs><marker id="a" markerWidth="10" markerHeight="10" refX="9" refY="3" orient="auto"><path d="M0,0 L0,6 L9,3 z" fill="#555"/></marker></defs>',
       '<rect width="100%" height="100%" fill="white"/>',
       f'<text x="380" y="36" text-anchor="middle" font-family="sans-serif" font-size="24" font-weight="700">{escape(title)}</text>']
    ys=[]
    for i,label in enumerate(labels):
        y=70+i*(box_h+gap); ys.append(y)
        s.append(f'<rect x="{x}" y="{y}" width="{box_w}" height="{box_h}" rx="10" fill="#f7f7f8" stroke="#555" stroke-width="1.5"/>')
        if "\n" in label:
            first, second = label.split("\n", 1)
            s.append(f'<text x="380" y="{y+24.0}" text-anchor="middle" dominant-baseline="middle" font-family="sans-serif" font-size="15">{escape(first)}</text>')
            s.append(f'<text x="380" y="{y+46.0}" text-anchor="middle" dominant-baseline="middle" font-family="sans-serif" font-size="14">{escape(second)}</text>')
        else:
            s.append(f'<text x="380" y="{y+box_h/2+1}" text-anchor="middle" dominant-baseline="middle" font-family="sans-serif" font-size="15">{escape(label)}</text>')
        if i:
            prev=ys[i-1]
            s.append(f'<line x1="380" y1="{prev+box_h}" x2="380" y2="{y-4}" stroke="#555" stroke-width="2" marker-end="url(#a)"/>')
    s.append('</svg>')
    return "\n".join(s)+"\n"

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--only", nargs="+", choices=sorted(FLOWS), help="regenerate only the named diagrams")
    args = parser.parse_args()
    names = args.only or list(FLOWS)
    OUT.mkdir(parents=True, exist_ok=True)
    for name in names:
        title, labels = FLOWS[name]
        (OUT/f"{name}.svg").write_text(svg(title,labels),encoding="utf-8")
    print(f"generated {len(names)} diagrams")

if __name__=="__main__":
    main()
