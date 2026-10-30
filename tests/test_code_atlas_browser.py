#!/usr/bin/env python3
"""Real Chromium smoke test for the generated, human-first Code Atlas.

Needs pip install playwright and a Chromium/Chrome executable. Override
ATLAS_HTML and CHROME_PATH to run on a different generated artifact.
"""
from __future__ import annotations
import asyncio
import os
from pathlib import Path
import shutil
from playwright.async_api import async_playwright

def browser_executable() -> str:
    return (os.environ.get("CHROME_PATH") or shutil.which("google-chrome")
            or shutil.which("chromium") or shutil.which("chromium-browser") or "")

async def main() -> None:
    path = Path(os.environ.get("ATLAS_HTML", "/tmp/crpg-code-atlas.html"))
    executable = browser_executable()
    if not executable:
        raise RuntimeError("Chromium/Chrome not installed")
    async with async_playwright() as p:
        browser = await p.chromium.launch(headless=True, executable_path=executable,
                                          args=["--no-sandbox"])
        try:
            page = await browser.new_page(viewport={"width": 1440, "height": 900})
            errors: list[str] = []
            page.on("pageerror", lambda error: errors.append(str(error)))
            await page.goto(path.resolve().as_uri(), wait_until="load")
            assert "어떻게 작동할까" in await page.locator("h1").inner_text()
            assert await page.locator(".grid .tile").count() >= 3
            await page.locator('[data-flow="0"]').first.click()
            assert "게임 작동 과정" in await page.locator("h1").inner_text()
            assert await page.locator(".stage").count() >= 4
            await page.locator('[data-file="game/actions/attack_action.gd"]').first.click()
            assert "AttackAction" in await page.locator(".drawer").inner_text()
            await page.locator(".close").click()
            await page.locator('[data-view="systems"]').click()
            await page.locator('.domaincard[data-system="history"]').click()
            assert "역사" in await page.locator("#systemDetail").inner_text()
            assert await page.locator("#systemDetail [data-file]").count() > 1
            await page.locator('[data-view="code"]').click()
            assert await page.locator(".graphnode").count() >= 2
            await page.locator("#finder").fill("TacticalPlanner")
            assert await page.locator('#searchResults [data-file]').count() >= 1
            await page.locator('#searchResults [data-file]').first.click()
            assert "TacticalPlanner" in await page.locator(".drawer").inner_text()
            await page.locator(".close").click()
            await page.locator('[data-view="home"]').click()
            assert "어떻게 작동할까" in await page.locator("h1").inner_text()
            assert not errors, "JavaScript page errors: " + repr(errors)
            print("Human-first Code Atlas Chromium smoke test passed.")
        finally:
            await browser.close()

if __name__ == "__main__":
    asyncio.run(main())
