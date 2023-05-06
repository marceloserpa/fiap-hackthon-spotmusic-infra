resource "google_artifact_registry_repository" "spot-music-frontend-repository" {
  location = var.region
  repository_id = "spot-music-frontend"
  description = "Repository for Spot Music Frontend"
  format = "DOCKER"
}

resource "google_artifact_registry_repository" "spot-music-backend-repository" {
  location = var.region
  repository_id = "spot-music-backend"
  description = "Repository for Spot Music Backend"
  format = "DOCKER"
}