from unittest.mock import patch
from janitor import get_instances


@patch("janitor.ec2.describe_instances")
def test_instances(mock_describe):

    mock_describe.return_value = {
        "Reservations": [
            {
                "Instances": [
                    {
                        "InstanceId": "i-123456789",
                        "State": {
                            "Name": "running"
                        }
                    }
                ]
            }
        ]
    }

    data = get_instances()

    assert len(data) > 0
    assert data[0]["InstanceId"] == "i-123456789"