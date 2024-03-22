terraform {
    cloud {
        organization = "Anime-Server"

        workspaces {
            name = "Server-Cloud"
        }
    }
}