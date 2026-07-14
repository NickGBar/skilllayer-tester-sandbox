# SkillLayer tester sandbox

This is a disposable test repository for trying SkillLayer. It is safe to
delete. The first trial takes about 15–25 minutes.

**This is a disposable test repository. Do not run the first SkillLayer test on production code or uncommitted work.**

The agent may modify only `app.py` and `tests/test_app.py` for the controlled
task. It must not access other repositories, your home directory, `.env` files,
SSH keys, global Git configuration, or global packages.

Copy the [one-prompt test](https://github.com/NickGBar/Skilllayer/blob/main/ONE_PROMPT_TEST.md), then return here to run it. Review your generated `results.md` before sharing anything.

## Quick Start

1. Read [TASK.md](TASK.md) and [EXPECTED_BOUNDARIES.md](EXPECTED_BOUNDARIES.md).
2. Use the public one-prompt test in Claude Code, Codex, or another terminal-capable coding agent.
3. Let the agent make only the controlled `farewell(name)` change.
4. Review the local `results.md` created from [RESULTS_TEMPLATE.md](RESULTS_TEMPLATE.md).

## Safety Boundaries

This fixture has no external services, secrets, or production data. SkillLayer
does not install dependencies automatically. A missing pytest environment is
intentional: any suggested command must be reviewed and explicitly approved.

## Expected Test Flow

The task adds `farewell(name)` and a focused test. Create `.venv` without
pytest first to observe truthful incomplete validation and the recommendation
based on `requirements-test.txt`. After explicit approval, retry validation.

## Reset

```bash
./scripts/reset_sandbox.sh
```

The reset script refuses to run unless the sandbox repository root and marker
match. It removes only sandbox-local generated state.

## Share Results

Use the results template, remove source code, credentials, private paths,
prompts, project memory, and unrelated MCP configuration, then choose whether
to share it manually. Nothing uploads automatically.

## Report a Problem

Open the [SkillLayer bug-report form](https://github.com/NickGBar/Skilllayer/issues/new?template=bug_report.yml) with sanitized output only.
