import requests
import os
import json

url = 'https://openparking.stockholm.se/LTF-Tolken/v1/servicedagar/weekday/måndag?outputFormat=json&apiKey=c34759bc-9944-403b-b9d9-b3ebe20a7fb6'

def get_data(url):

    response = requests.get(url)

    if response.status_code == 200:
        data = response.json()
        print("lyckades hämta data")


    else:
        print('ngt gick fel')
    
get_data(url)
