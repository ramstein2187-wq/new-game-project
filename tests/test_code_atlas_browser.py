#!/usr/bin/env python3
"""Browser smoke test: run the *generated* Atlas in real Chromium.

Requires pip install playwright and an installed Chromium/Google Chrome binary.
Supply ATLAS_HTML to override the HTML path and CHROME_PATH to override the
browser executable. This tests script startup rather than JS syntax alone.
"""
from __future__ import annotations

import asyncio
import os
from pathlib import Path
import shutil

from playwright.async_api import async_playwright


def browser_executable() -> str:
    given = os.environ.get("CHROME_PATH")
    if given:
        return given
    return (shutil.which("google-chrome") or shutil.which("chromium")
            or shutil.which("chromium-browser") or "")


async def main() -> None:
    path = Path(os.environ.get("ATLAS_HTML", "/tmp/crpg-code-atlas.html"))
    html = path.read_text(encoding="utf-8")
    executable = browser_executable()
    if not executable:
        raise RuntimeError("Chromium/Chrome not installed; cannot run smoke test")
    async with async_playwright() as playwright:
        browser = await playwright.chromium.launch(
            headless=True, executable_path=executable, args=["--no-sandbox"]
        )
        try:
            page = await browser.new_page(viewport={"width": 1440, "height": 900})
            errors: list[str] = []
            page.on("pageerror", lambda error: errors.append(str(error)))
            # Inline content also works where CI policies block file:// URLs.
            await page.set_content(html, wait_until="load")
            assert await page.locator("#systemList button").count() >= 15
            assert await page.locator("canvas").evaluate("(el)=>el.width") > 500
            assert await page.locator("#viewTitle").inner_text() == "시스템 구조"
            await page.locator("#systemList button").filter(has_text="game/combat").first.click()
            assert await page.locator("#viewTitle").inner_text() == "game/combat"
            await page.locator("#search").fill("AttackAction")
            assert await page.locator("#results button").count() >= 1
            await page.locator("#results button").first.click()
            assert "attack_action.gd" in await page.locator("#inspector").inner_text()
            await page.locator("#allBtn").click()
            assert "파일" in await page.locator("#viewTitle").inner_text()
            await page.locator("#zoomIn").click()
            await page.locator("#fit").click()
            await page.locator("#overviewBtn").click()
            assert await page.locator("#viewTitle").inner_text() == "시스템 구조"
            assert not errors, "JavaScript errors: " + repr(errors)
            print("Code Atlas Chromium smoke test passed: startup, rendering, navigation, search, inspect, zoom.")
        finally:
            await browser.close()


if __name__ == "__main__":
    asyncio.run(main())
