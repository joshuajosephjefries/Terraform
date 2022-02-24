# Variables with type as list

variable "countries_list" {
    default = ["USA", "Canada", "Germany", "UK", "Italy", "France", "Japan"]
    type = list
    description = "List of countries"
}