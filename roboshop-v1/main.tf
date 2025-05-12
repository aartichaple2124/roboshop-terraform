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
      vm_size = "Standard B2s"
    }

    mongodb = {
      name = "mongodb"
      vm_size = "Standard B2s"
    }

    catalogue = {
      name = "catalogue"
      vm_size = "Standard B2s"
    }

    user = {
      name = "user"
      vm_size = "Standard B2s"
    }

    cart = {
      name = "cart"
      vm_size = "Standard B2s"
    }

    mysql = {
      name = "mysql"
      vm_size = "Standard_B1ms"
    }

    shipping = {
      name = "shipping"
      vm_size = "Standard_B1ms"
    }

    payment = {
      name = "payment"
      vm_size = "Standard_B1ms"
    }

    redis = {
      name = "redis"
      vm_size = "Standard_B1ms"
    }

    dispatch = {
      name = "dispatch"
      vm_size = "Standard_B1ms"
    }

    rabbitmq = {
      name = "rabbitmq"
      vm_size = "Standard_B1ms"
    }
  }

}