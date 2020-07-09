variable "project_id" {}
variable "region" {}

provider "google" {
    credentials = file("../KEY.json")
    project = var.project_id
    region = var.region
}