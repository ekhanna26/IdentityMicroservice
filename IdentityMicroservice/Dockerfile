FROM microsoft/aspnetcore:2.0 AS base
WORKDIR /app
EXPOSE 80

FROM microsoft/aspnetcore-build:2.0 AS build
WORKDIR /src
COPY IdentityMicroservice/IdentityMicroservice.csproj IdentityMicroservice/
RUN dotnet restore IdentityMicroservice/IdentityMicroservice.csproj
COPY . .
WORKDIR /src/IdentityMicroservice
RUN dotnet build IdentityMicroservice.csproj -c Release -o /app

FROM build AS publish
RUN dotnet publish IdentityMicroservice.csproj -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "IdentityMicroservice.dll"]
