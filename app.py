"""A tiny, disposable application for the SkillLayer beta sandbox."""


def greet(name: str) -> str:
    """Return a friendly greeting for a non-empty name."""
    if not name:
        raise ValueError("name is required")
    return f"Hello, {name}!"
