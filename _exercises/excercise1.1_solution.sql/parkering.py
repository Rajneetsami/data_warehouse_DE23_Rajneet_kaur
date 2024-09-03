import dlt
import requests
import json


@dlt.resource(write_disposition="append")
def parkering_resource(api_secret_key: str = dlt.secrets.value,):
    url = "https://openstreetgs.stockholm.se/Home/Parking"

    headers = {
        'accept': 'application/json',
        'api_key': 'c34759bc-9944-403b-b9d9-b3ebe20a7fb6'  # Use your API key here
    }

    response = requests.get(url, headers=headers)
    response.raise_for_status()  # Raise an error for bad status codes

    data = response.json()

    # Assuming the API returns a list of parking data records
    for record in data:
        yield record
    

if __name__ == "__main__":

    pipeline = dlt.pipeline(
        pipeline_name='parkering',
        destination='snowflake',
        dataset_name='staging',
    )

    # Fetch and print the data to verify it's working
    data = list(parkering_resource(api_secret_key="c34759bc-9944-403b-b9d9-b3ebe20a7fb6"))

    print(data)

    # Load the data into Snowflake
    load_info = pipeline.run(parkering_resource(api_secret_key="c34759bc-9944-403b-b9d9-b3ebe20a7fb6"))

    print(load_info)

