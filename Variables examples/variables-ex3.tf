# Variables with type as maps of string

variable "countries_map_string" {
    default = {
        name = "canada"
        continent = "North America"
    }
    type = map(string)
    description = "Geographical description of Canada"
}