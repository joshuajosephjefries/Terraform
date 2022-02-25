# Variables with type as object

variable "my_object" {
    type = object({name = string})
    default={
        name = "Joseph"
    }
}
