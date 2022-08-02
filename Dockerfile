# ./Dockerfile

# Extend from the official Elixir image.
FROM elixir:1.13.4-otp-25

RUN apt-get update && \
  apt-get install -y postgresql-client

# Create app directory and copy the Elixir projects into it.
RUN mkdir /app
COPY . /app
WORKDIR /app

# Install Hex package manager.
RUN mix local.hex --force

# Compile the project.
RUN mix do compile
EXPOSE 4000

CMD ["/app/entrypoint.sh"]

