from fastapi.testclient import TestClient
from rumbo_agent import app

client = TestClient(app)


def test_healthz() -> None:
    response = client.get("/agent/healthz")
    assert response.status_code == 200
    assert response.json() == {"status": "ok"}
