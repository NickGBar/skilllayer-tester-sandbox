# Sandbox safety boundaries

This repository is disposable. Use it instead of a valuable repository for a
first SkillLayer trial.

## Allowed

SkillLayer and the host coding agent may:

- read files inside this sandbox;
- create a local `.venv` here;
- modify only the requested `app.py` and `tests/test_app.py` files;
- create `.skilllayer/` only after explicit memory use;
- create `results.md` from the supplied template;
- run sandbox tests;
- remove a test-local MCP entry;
- uninstall the sandbox-local SkillLayer environment.

## Not allowed

They must not:

- inspect other repositories or the user home directory;
- read `.env` files or SSH keys;
- modify global Git configuration or global packages;
- use `sudo`;
- modify unrelated MCP entries;
- push, commit, upload results, or send telemetry;
- delete anything outside this sandbox directory.

SkillLayer does not install dependencies automatically. Any remediation command
must be reviewed and explicitly run by the tester.
