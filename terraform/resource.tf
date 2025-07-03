resource "local_file" "my-file" {
        filename = "new-file.txt"
        content = "this is my terraform file"

}

resource "docker_image" "my_image" {
        name = "vsarode000/kanban-dashboard:latest"
        keep_locally = false
}

resource "docker_container" "my_container" {
        image = docker_image.my_image.name
        name = "kanban-app"
        ports {
                internal = 8000
                external = 8000
        }
        depends_on = [docker_image.my_image]
}


resource "aws_s3_bucket" "my_bucket" {
        bucket = "new-bucket-1704"
        tags = {
                Name = "test-bucket"
        }
}

resource "aws_instance" "my-instance" {
        ami = "ami-0c803b171269e2d72"
        instance_type = "t2.micro"
        availability_zone = "us-east-2b"
        key_name = "d-practice-keypair"

        tags = {
                Name = "my-test-instance"
        }
}
