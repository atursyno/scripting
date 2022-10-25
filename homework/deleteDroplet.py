import json, requests, os

zsh_env_token = os.getenv('token')
droplet_info = '{"name": "MyDropletAPI", "region": "nyc3", "size": "s-1vcpu-1gb", "image": "ubuntu-20-04-x64"}'

def delete_droplets(do_token):
    droplet_id = get_droplets(do_token=zsh_env_token)
    url = 'https://api.digitalocean.com/v2/droplets/%s' % droplet_id
    two_headers = {"Content-Type": "application/json","Authorization": "Bearer " + do_token}

    response = requests.delete(url, headers=two_headers)
    resp = response.json()
    print(resp)
    
print(delete_droplets(do_token=zsh_env_token))