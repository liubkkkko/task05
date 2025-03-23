# terraform.tfvars
resource_groups = {
  rg1 = {
    name     = "cmaz-13f58f43-mod5-rg-01"
    location = "West Europe"
  },
  rg2 = {
    name     = "cmaz-13f58f43-mod5-rg-02"
    location = "North Europe"
  },
  rg3 = {
    name     = "cmaz-13f58f43-mod5-rg-03"
    location = "East US"
  }
}

app_service_plans = {
  asp1 = {
    name         = "cmaz-13f58f43-mod5-asp-01"
    sku          = "P0v3"
    worker_count = 2
    rg_key       = "rg1"
  },
  asp2 = {
    name         = "cmaz-13f58f43-mod5-asp-02"
    sku          = "P1v3"
    worker_count = 1
    rg_key       = "rg2"
  }
}

app_services = {
  app1 = {
    name               = "cmaz-13f58f43-mod5-app-01"
    asp_key            = "asp1"
    rg_key             = "rg1"
    allow_ip_rule_name = "allow-ip"
    allow_tm_rule_name = "allow-tm"
  },
  app2 = {
    name               = "cmaz-13f58f43-mod5-app-02"
    asp_key            = "asp2"
    rg_key             = "rg2"
    allow_ip_rule_name = "allow-ip"
    allow_tm_rule_name = "allow-tm"
  }
}

traffic_manager = {
  name           = "cmaz-13f58f43-mod5-traf"
  rg_key         = "rg3"
  routing_method = "Performance"
}

verification_ip = "18.153.146.156"

tags = {
  Creator = "liubomyr_puliak@epam.com"
}