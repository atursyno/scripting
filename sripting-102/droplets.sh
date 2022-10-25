token=

create_droplet() { 
  CreateDroplets=$(curl -X POST \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $token" \
    -d '{
      "name":"'"$1"'",
      "region":"nyc3",
      "size":"s-1vcpu-1gb",
      "image":"ubuntu-22-04-x64"
      }' \
    "https://api.digitalocean.com/v2/droplets")

    echo $CreateDroplets | jq '.id'
}
list_droplets(){
listAllDroplets=$(curl -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $token" \
  "https://api.digitalocean.com/v2/droplets?page=1&per_page=1")
 
#  echo $listAllDroplets | jq '.droplets[0].id'

# }
# delete_droplet(){
# DeleteDroplets=$(curl -X DELETE \
#   -H "Content-Type: application/json" \
#   -H "Authorization: Bearer $token" \
#   "https://api.digitalocean.com/v2/droplets/$1")

#   echo $DeleteDroplets
# }


# for droplet in {1..3}; do
#   create_droplet "myDropletAPI-$droplet"

# done


# for droplet in {1..3}; do
#   list_droplets
# done

# for droplet in {1..3}; do
#    delete_droplet 
# done