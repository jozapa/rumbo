from fastapi import FastAPI

app = FastAPI(title="Rumbo backend")


@app.get("/api/healthz")
def healthz() -> dict[str, str]:
    return {"status": "ok"}
