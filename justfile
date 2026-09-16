set dotenv-load

bootstrap:
    uv sync --all-packages
    pnpm install
    pre-commit install --hook-type pre-commit --hook-type commit-msg

up:
    docker compose up -d --wait

down:
    docker compose down

check:
    uv run ruff check .
    uv run ruff format --check .
    uv run pyright
    pnpm -C frontend lint

test:
    uv run pytest

dev-backend:
    uv run --package rumbo-backend uvicorn rumbo_backend:app --reload --port 8000

dev-agent:
    uv run --package rumbo-agent uvicorn rumbo_agent:app --reload --port 8001
