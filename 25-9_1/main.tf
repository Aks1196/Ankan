
module "resource_groups" {
source ="./modules/resource_groups"
for_each = tomap(var.rg_names) 
rg =each.value
}


module "storage_accounts1" {
depends_on = [module.resource_groups]

source ="./modules/storage_accounts"

for_each = var.storage_accounts

storage_accounts1= {
name                = each.value.name
replication_type    = each.value.replication_type
resource_group_name = module.resource_groups[each.value.rg].rg_required_info.name
location            = module.resource_groups[each.value.rg].rg_required_info.location

}
}




