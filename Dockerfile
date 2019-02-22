FROM microsoft/dotnet:2.1-sdk
RUN mkdir /app
WORKDIR /app
COPY FreshApp/FreshApp/*.csproj .
RUN dotnet restore
COPY FreshApp/FreshApp/ .
RUN dotnet publish -c Release -o out
RUN ls -lrt
EXPOSE 8080
CMD ["dotnet", "/app/bin/Release/netcoreapp2.1/FreshApp.dll"]
