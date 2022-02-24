# Variables with type as maps

variable "countries_maps" {
    default = {
        statement1 = "USA is a member of G7 countries"
        statement2 = "The G7 is an informal grouping of seven of the world's advanced economies"
    }
    type = map
    description = "List of G7 countries"
}