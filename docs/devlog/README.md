# Development Log

This directory stores very short chronological summaries of project work.

## Format

- Use one file per month: `YYYY-MM.md`.
- Add one section per development day: `## YYYY-MM-DD`.
- Keep each day to roughly 3–6 concise bullets.
- Record outcomes, important decisions, validation, and the next obvious step when useful.
- Do not duplicate detailed milestone or architecture documentation here.
- Do not load the devlog by default for ordinary implementation work; use it only when historical context is needed.

## Daily automation

The scheduled daily summary runs shortly after midnight in Asia/Seoul and summarizes the **previous calendar day**.

Preferred evidence, in order:

1. Git commits and diffs from that day
2. milestone/document changes
3. relevant project state visible through DevSpace

If the repository cannot be accessed safely, do not invent an entry. Report that the devlog could not be updated instead.
