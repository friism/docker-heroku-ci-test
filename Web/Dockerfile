FROM microsoft/dotnet:2.1-sdk-alpine AS build
WORKDIR /app

COPY *.csproj .
RUN dotnet restore

COPY . .
RUN dotnet publish -c Release -o /app -r linux-musl-x64

FROM microsoft/dotnet:2.1-runtime-alpine AS runtime
COPY --from=build /app /app

WORKDIR /app
CMD ASPNETCORE_URLS=http://+:$PORT dotnet Web.dll
