import json

def save_report(data):

    with open(
        "report.json",
        "w"
    ) as f:

        json.dump(
            data,
            f,
            indent=4
        )

    print(
        "Report saved"
    )