from fastapi.testclient import TestClient
from rumbo_backend import app

client = TestClient(app)


def test_healthz() -> None:
    response = client.get("/api/healthz")
    assert response.status_code == 200
    assert response.json() == {"status": "ok"}
