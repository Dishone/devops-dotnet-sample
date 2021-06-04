FROM mcr.microsoft.com/dotnet/aspnet:5.0.6

ADD app/ /app

WORKDIR /app

EXPOSE 5000

CMD dotnet /app/devops-dotnet-sample.dll
