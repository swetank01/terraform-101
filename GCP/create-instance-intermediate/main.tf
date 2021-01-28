variable "project_id" {}
variable "region" {}

provider "google" {
    credentials = file("../../../my-gcp-json.json")
    project = var.project_id
    region = var.region
}