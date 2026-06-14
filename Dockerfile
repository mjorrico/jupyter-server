FROM ghcr.io/astral-sh/uv:debian

RUN addgroup --system jupyter && adduser --system --ingroup jupyter jupyter

ENV HOME=/app

WORKDIR /app

RUN uv init . --python 3.12 && uv venv --python 3.12 && uv add jupyter pandas matplotlib numpy scipy scikit-learn seaborn plotly openpyxl xlrd statsmodels

RUN chown -R jupyter:jupyter /app

USER jupyter

CMD ["uv", "run", "jupyter", "notebook", "--no-browser", "--ip", "0.0.0.0", "--port", "8888"]