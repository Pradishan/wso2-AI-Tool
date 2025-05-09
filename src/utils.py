import requests

# GitHub API helper
def github_api(url, headers,params=None):
    """"Make a request to the GitHub API and return the JSON response.
    Args:
        url (str): The API endpoint URL.
        params (dict, optional): Query parameters to include in the request."""
    
    response = requests.get(url, headers=HEADERS, params=params)
    response.raise_for_status()
    return response.json()