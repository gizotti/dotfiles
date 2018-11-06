function elements_id_to_item_id() {
  curl -s --fail "https://elements.envato.com/api/v1/items/$1.json" | jq .data.attributes.itemUuid | tr -d '"'
}
