# Variables with type as list

variable "countries" {
    default = ["USA", "Canada", "Germany", "UK", "Italy", "France", "Japan"]
    type = list
    description = "List of countries"
}