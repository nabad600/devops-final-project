module "sg" {
 source = "./modules/security-group"
}

module "iam" {
 source = "./modules/iam"
}

module "ec2" {

 source = "./modules/ec2"

 sg_id = module.sg.sg_id

 instance_profile = module.iam.profile
}
