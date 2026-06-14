# Dockerized Jupyter

A containerized Jupyter Notebook server with a full data science stack, managed with [uv](https://docs.astral.sh/uv/).

## Included Packages

- **jupyter** — Notebook server
- **pandas**, **numpy**, **scipy** — Core data manipulation
- **matplotlib**, **seaborn**, **plotly** — Visualization
- **scikit-learn**, **statsmodels** — Machine learning & statistics
- **openpyxl**, **xlrd** — Excel I/O

## Quick Start

1. Copy the environment file and set your token:

    ```bash
    cp .env.example .env
    ```

2. Build and start the container:

    ```bash
    docker compose up -d --build
    ```

## Accessing the Server

Open your browser and navigate to:

```
http://localhost:8888
```

Log in with the token set in `JUPYTER_TOKEN` (default: `secret_token`).

Notebooks saved to the `./mount` directory will persist on your host machine.
