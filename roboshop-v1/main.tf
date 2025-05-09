module "components" {
  for_each = var.components
  source = "./vm"
  component = each.value["nname"]
  vm_size = each.value["nname"]
}

variable "components" {
  default = {

    frontend = {
      name = "frontend"
      vm_size = "Standard_D2as_v4"
    }

    mongodb = {
      name = "mongodb"
      vm_size = "Standard_D2as_v4"
    }

    catalogue = {
      name = "catalogue"
      vm_size = "Standard_D2as_v4"
    }

    user = {
      name = "user"
      vm_size = "Standard_D2as_v4"
    }

    cart = {
      name = "cart"
      vm_size = "Standard_D2as_v4"
    }

    mysql = {
      name = "mysql"
      vm_size = "Standard_D2as_v4"
    }

    shipping = {
      name = "shipping"
      vm_size = "Standard_D2as_v4"
    }

    payment = {
      name = "payment"
      vm_size = "Standard_D2as_v4"
    }

    redis = {
      name = "redis"
      vm_size = "Standard_D2as_v4"
    }
  }

}