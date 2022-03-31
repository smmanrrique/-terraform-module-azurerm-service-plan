
resource "azurerm_app_service_plan" "service_plan" {
  name                = "${var.SERVICE_PLAN_NAME}sp"
  location            = var.LOCATION
  resource_group_name = var.RESOURCE_GROUP_NAME
  kind                = "Linux"
  reserved            = true

  sku {
    tier = var.TIER
    size = var.SIZE
  }

  tags = var.TAGS

}