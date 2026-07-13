# SkillLayer tester sandbox

A disposable macOS fixture for trying SkillLayer safely. It contains no
external services, secrets, network calls, or production data.

Read [EXPECTED_BOUNDARIES.md](EXPECTED_BOUNDARIES.md), then follow
[TASK.md](TASK.md). The whole repository should be understandable in under two
minutes.

The controlled task adds `farewell(name)` and one focused test. To exercise
environment remediation, create `.venv` first without installing pytest. The
repository provides `requirements-test.txt`; SkillLayer should recommend, but
never execute, the appropriate command.

To discard a trial:

```bash
./scripts/reset_sandbox.sh
```

The reset script refuses to run unless this exact repository root and marker
are present. It removes only sandbox-local generated state.
