resource "azurerm_public_ip" "PublicIp1" {
  name                = "PublicIp1"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Dynamic"
}

resource "azurerm_public_ip" "PublicIp2" {
  name                = "PublicIp2"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Dynamic"
}

resource "azurerm_public_ip" "PublicIp3" {
  name                = "PublicIp3"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Dynamic"
}


resource "azurerm_network_interface" "nic1" {
  name                = "nic1"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = "public1"
    subnet_id                     = azurerm_subnet.private1.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.PublicIp1.id
  }
}


resource "azurerm_network_interface" "nic2" {
  name                = "nic2"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = "public2"
    subnet_id                     = azurerm_subnet.private2.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.PublicIp2.id
  }
}


resource "azurerm_network_interface" "nic3" {
  name                = "nic3"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = "public3"
    subnet_id                     = azurerm_subnet.private3.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.PublicIp3.id
  }
}
