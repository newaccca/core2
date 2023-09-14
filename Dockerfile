# Use the official image as a parent image.
FROM mcr.microsoft.com/dotnet/aspnet:6.0

# Set the working directory.
WORKDIR /app

# Copy the output directory from your build stage into our new container.
COPY ./ .

# Configure the listening port to 80
ENV ASPNETCORE_URLS=http://+:80

# Expose port 80
EXPOSE 80

# Start the app.
ENTRYPOINT ["dotnet", "WebApplication3.dll"]






