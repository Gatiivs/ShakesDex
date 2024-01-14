FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
ARG configuration=Release

WORKDIR /src
COPY . ./
RUN dotnet restore "TodoApi.csproj"

RUN dotnet build "TodoApi.csproj" -c $configuration -o /app/build

FROM build AS publish
RUN dotnet publish "TodoApi.csproj" -c $configuration -o /app/publish /p:UseAppHost=false

FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app
EXPOSE 5090

ENV ASPNETCORE_ENVIRONMENT=Development
ENV ASPNETCORE_URLS=http://+:5090

#FROM base AS final
#WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "TodoApi.dll"]
