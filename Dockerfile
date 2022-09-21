# build stage
FROM mcr.microsoft.com/dotnet/sdk:6.0 as build

WORKDIR /src

COPY src/FYRO.Duffer.API.csproj .
RUN dotnet restore

COPY src/. .
RUN dotnet build -c Release
RUN dotnet test
RUN mkdir dist
RUN dotnet publish -c Release -o /dist

# run stage
FROM mcr.microsoft.com/dotnet/aspnet:6.0

WORKDIR /app

EXPOSE 8080
ENV ASPNETCORE_URLS=http://*:8080
COPY --from=build ./dist .

CMD ["dotnet", "FYRO.Duffer.API.dll"]