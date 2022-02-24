# Variables with type as maps of string

variable "countries_map_number" {
    default = {
        canada = "1"
        USA = "3"
        Germany = "5"
        UK = "4"
        Italy = "7"
        France = "2"
        Japan = "6"
    }
    type = map(number)
    description = "Serial numbers of countries"
}