import boto3
from constants import *

ec2 = boto3.client(
    "ec2",
    endpoint_url=LOCALSTACK_URL,
    region_name=AWS_REGION,
    aws_access_key_id=ACCESS_KEY,
    aws_secret_access_key=SECRET_KEY
)


def get_instances():

    response = ec2.describe_instances()

    instances = []

    for reservation in response["Reservations"]:

        for instance in reservation["Instances"]:

            instances.append(
                {
                    "id": instance["InstanceId"],
                    "state": instance["State"]["Name"]
                }
            )

    return instances


def main():

    data = get_instances()

    print("\nNimbusKart Janitor Report\n")

    for i in data:

        print(
            f"Instance: {i['id']} | State: {i['state']}"
        )


if __name__ == "__main__":

    main()