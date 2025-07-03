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
