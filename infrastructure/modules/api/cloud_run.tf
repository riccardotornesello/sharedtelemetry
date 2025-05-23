resource "google_cloud_run_v2_service" "api" {
  name     = "api"
  location = var.region

  depends_on = [google_project_iam_member.api_runner]

  deletion_protection = false

  template {
    annotations = {
      "deploy-time" = timestamp()
    }

    service_account = google_service_account.api_runner.email

    scaling {
      max_instance_count = 1
    }

    containers {
      image = "europe-west1-docker.pkg.dev/sharedtelemetryapp/sessions-downloader/api:latest" # TODO: variable

      volume_mounts {
        name       = "cloudsql"
        mount_path = "/cloudsql"
      }

      env {
        name  = "EVENTS_DB_USER"
        value = var.events_db_user
      }
      env {
        name  = "EVENTS_DB_PASS"
        value = var.events_db_password
      }
      env {
        name  = "EVENTS_DB_NAME"
        value = var.events_db_name
      }
      env {
        name  = "EVENTS_DB_HOST"
        value = "/cloudsql/${var.db_connection_name}"
      }
      env {
        name  = "CARS_DB_USER"
        value = var.cars_db_user
      }
      env {
        name  = "CARS_DB_PASS"
        value = var.cars_db_password
      }
      env {
        name  = "CARS_DB_NAME"
        value = var.cars_db_name
      }
      env {
        name  = "CARS_DB_HOST"
        value = "/cloudsql/${var.db_connection_name}"
      }
    }

    volumes {
      name = "cloudsql"
      cloud_sql_instance {
        instances = [var.db_connection_name]
      }
    }
  }
}

resource "google_cloud_run_domain_mapping" "default" {
  location = var.region
  name     = var.domain

  metadata {
    namespace = "sharedtelemetryapp"
  }

  spec {
    route_name = google_cloud_run_v2_service.api.name
  }
}
