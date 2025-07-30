FROM mcr.microsoft.com/devcontainers/python:3.11-bullseye

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    git \
    libpq-dev \
    libssl-dev \
    libffi-dev \
    python3-dev \
    postgresql-client \
    redis-tools \
    && rm -rf /var/lib/apt/lists/*


# Install Poetry
ENV POETRY_HOME=/opt/poetry
ENV PATH="$POETRY_HOME/bin:$PATH"
RUN curl -sSL https://install.python-poetry.org | python3 - && \
    poetry --version

# Configure Poetry
RUN poetry config virtualenvs.create true && \
    poetry config virtualenvs.in-project true

# Install global Python tools
RUN pip install --upgrade pip && \
    pip install \
    black \
    isort \
    flake8 \
    mypy \
    pytest \
    pytest-cov \
    pre-commit \
    ipython \
    jupyter \
    httpx \
    rich




# Set working directory
WORKDIR /workspace

# Keep container running
CMD ["sleep", "infinity"]