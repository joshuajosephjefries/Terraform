resource "random_pet" "g7-countries-leader"{
    prefix = var.countries_list[1] # Canada
}

resource "local_file" "aboutG7" {
    filename = "/home/ec2-user/terraform"
    content = var.countries_maps["statement2"] # The G7 is an informal grouping of seven of the world's advanced economies
}

resource "local_file" "grography" {
    filename = "/home/ec2-user/terraform"
    content = var.countries_map_string["continent"] # North America
}