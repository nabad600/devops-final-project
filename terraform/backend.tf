terraform {
 backend "s3" {
   bucket = "terraform-state-naba"
   key    = "terraform.tfstate"
   region = "us-east-2"
 }
}
