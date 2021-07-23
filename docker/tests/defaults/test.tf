terraform {
  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }
  }
}

module "main" {
  source = "../.."
}

resource "test_assertions" "image" {
  # "component" serves as a unique identifier for this
  # particular set of assertions in the test results.
  component = "image"

  equal "name" {
    description = "name of the image"
    got         = module.main.image.name
    want        = "nginx:1.21.1"
  }
}
