FROM microsoft/dotnet:2.1-sdk-alpine AS build
WORKDIR /app

COPY . .

