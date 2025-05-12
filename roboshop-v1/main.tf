module "components" {
  for_each = var.components
  source = "./vm"
  component = each.value["name"]
  vm_size = each.value["vm_size"]
}

variable "components" {
  default = {

    frontend = {
      name = "frontend"
      vm_size = "Standard_B1s"
    }

    mongodb = {
      name = "mongodb"
      vm_size = "Standard_B1s"
    }

    catalogue = {
      name = "catalogue"
      vm_size = "Standard_B1s"
    }

    user = {
      name = "user"
      vm_size = "Standard_B1s"
    }

    cart = {
      name = "cart"
      vm_size = "Standard_D2as_v4"
    }

    mysql = {
      name = "mysql"
      vm_size = "Standard_E2s_v3"
    }

    shipping = {
      name = "shipping"
      vm_size = "Standard_E2s_v3"
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