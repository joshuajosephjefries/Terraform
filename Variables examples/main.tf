# Variables with type as list
resource "random_pet" "g7-countries-leader"{
    prefix = var.countries_list[1] # Canada
}

# Variables with type as maps
resource "local_file" "aboutG7" {
    filename = "/home/ec2-user/terraform"
    content = var.countries_maps["statement2"] # The G7 is an informal grouping of seven of the world's advanced economies
}

# Variables with type as map of string
resource "local_file" "grography" {
    filename = "/home/ec2-user/terraform"
    content = var.countries_map_string["continent"] # North America
}

# Variables with type as map of number
resource "random_pet" "my_map_number" {
    prefix = var.countries_map_number["USA"] # 3
}

# Variables with type as tuple
resource "random_pet" "countries_tuple" {
    prefix = var.my_tuple[2] # true
}

# Variables with objects
resource "random_pet" "countries_object" {
    prefix = var.my_object["name"]
}