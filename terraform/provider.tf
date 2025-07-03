
terraform {
        required_providers {
                docker = {
                        source = "kreuzwerker/docker"
                        version = "3.6.2"
                }

                aws = {
                        source = "hashicorp/aws"
                        version = "6.2.0"
                }
        }
}

provider "docker" {

}

provider "aws" {
        region = "us-east-2"
}
