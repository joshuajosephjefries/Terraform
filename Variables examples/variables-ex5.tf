# Variables with type as tuple

variable "my_tuple" {
    type = tuple([string, number, bool])
    default= ["Italy", 1, true]
    description = "Tuple"
}