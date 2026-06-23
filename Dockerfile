FROM ghcr.io/astral-sh/uv:debian

RUN addgroup --system jupyter && adduser --system --ingroup jupyter jupyter

ENV HOME=/app

WORKDIR /app

COPY pyproject.toml .

RUN uv sync --python 3.12

RUN chown -R jupyter:jupyter /app

USER jupyter

CMD ["uv", "run", "jupyter", "notebook", "--no-browser", "--ip", "0.0.0.0", "--port", "8888"]
