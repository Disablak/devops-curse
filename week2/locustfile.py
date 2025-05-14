from locust import HttpUser, task, between

class WebsiteUser(HttpUser):
    wait_time = between(1, 2)  # Each user waits 1–2s between tasks

    @task
    def load_main_page(self):
        self.client.get("/")  # You can change this to test /login, /api, etc.

