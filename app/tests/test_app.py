from app.app import app


def test_home_returns_hello_world():
    client = app.test_client()

    response = client.get("/")

    assert response.status_code == 200
    assert response.get_data(as_text=True) == "AWS CI/CD Lab - Hello World!"


def test_health_returns_healthy_status():
    client = app.test_client()

    response = client.get("/health")

    assert response.status_code == 200
    assert response.get_json() == {"status": "healthy"}
