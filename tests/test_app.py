import pytest

from app import greet


def test_greet_returns_a_friendly_message():
    assert greet("Ada") == "Hello, Ada!"


def test_greet_rejects_an_empty_name():
    with pytest.raises(ValueError, match="name is required"):
        greet("")
