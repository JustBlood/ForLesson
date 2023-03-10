# Use Alpine Base Image
FROM mcr.microsoft.com/dotnet/aspnet:6.0-alpine AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

# Use Alpine Base Image
FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine AS build
WORKDIR /src
COPY aspAttempt.csproj ./
RUN dotnet restore "./aspAttempt.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "aspAttempt.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "aspAttempt.csproj" -c Release -o /app/publish


FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "aspAttempt.dll"]
