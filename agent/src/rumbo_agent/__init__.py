from fastapi import FastAPI

app = FastAPI(title="Rumbo agent")


@app.get("/agent/healthz")
def healthz() -> dict[str, str]:
    return {"status": "ok"}
