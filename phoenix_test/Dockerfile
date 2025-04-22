FROM elixir:1.16-alpine

# Install build dependencies
RUN apk add --no-cache build-base git inotify-tools nodejs npm

# Set environment to dev
ENV MIX_ENV=dev
ENV NODE_ENV=development

# Create app directory and set as working directory
WORKDIR /app

# Install hex and rebar
RUN mix local.hex --force && \
    mix local.rebar --force

# Expose the Phoenix port
EXPOSE 4000

# Start Phoenix in development mode with live reloading
CMD mix deps.get && \
    mix compile && \
    mix phx.server