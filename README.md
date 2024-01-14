# To catcheth those folk all or not to catcheth those folk all (ShakesDex)

ShakesDex is an exercise where you can translate pokemon descriptions into Shakespearean.  
This solution utilises:  
.NET,  
Docker  

## Installation
When writing this I expect you to already have docker,  
but if you dont you can get it [HERE](https://docs.docker.com/desktop/install/windows-install/) (assuming you are using windows).  

clone respository "https://github.com/Gatiivs/TodoApi.git"  

To get the project running  
open up a terminal and go to the location of the project  
in my case its "C:\Users\Raitis\mydir\TodoApi"  

Login to docker
```
docker login
```
build image (here its called counter image but you can rename it)
```
docker build -t counter-image -f Dockerfile .
```
build container
```
docker create --name core-counter counter-image
```
run container
```
docker run --rm -e ASPNETCORE_ENVIRONMENT=Development -p 5090:5090 counter-image
```

## Usage

Test if page is working at all
go to http://localhost:5090/Pokemon/testing 
and then go to http://localhost:5090/swagger
REMEMBER TO USE HTTP and NOT HTTPS

If container doesnt work for some reason you can start the native way  
trust certificate  
```
dotnet dev-certs https --trust
```
run dotnet
```
dotnet run --launch-profile https
```

## License

[MIT](https://choosealicense.com/licenses/mit/)
