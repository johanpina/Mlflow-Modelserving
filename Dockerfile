FROM python:3.12-slim
RUN pip install --no-cache-dir mlflow==3.14.0 uv
ENV PORT=8080
ENV MODEL_URI="models:/RecomenderClass@champion"
CMD mlflow models serve -m "${MODEL_URI}" -h 0.0.0.0 -p ${PORT} --env-manager uv