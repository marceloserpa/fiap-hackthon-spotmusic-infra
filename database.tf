resource "google_sql_database" "database" {
  name     = "spot-music"
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_database_instance" "instance" {
  name             = "spot-music-instance"
  region           = "us-central1"
  database_version = "MYSQL_8_0"
  settings {
    tier = "db-f1-micro"
  }

  #deletion_protection  = "true"
}