import sys
import os

sys.path.append(
    os.path.abspath(
        os.path.join(
            os.path.dirname(__file__),
            ".."
        )
    )
)

from janitor import get_instances


def test_instances():

    data = get_instances()

    assert isinstance(
        data,
        list
    )