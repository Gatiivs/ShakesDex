# To catcheth those folk all or not to catcheth those folk all (ShakesDex)

ShakesDex is an exercise where you can translate pokemon descriptions into Shakespearean.  
This solution utilises:  
.NET,  
Docker  

## Installation
When writing this I expect you to already have docker,  
but if you dont you can get it [HERE](https://docs.docker.com/desktop/install/windows-install/) (assuming you are using windows).  

clone respository
```
git clone https://github.com/Gatiivs/ShakesDex.git   
```

To get the project running  
open up a terminal and go to the location of the project  
in my case its "C:\Users\Raitis\mydir\shakesDex"  

Login to docker
```
docker login
```

build image (here its called shakesdex but you can rename it)
```
docker build -t shakesdex -f Dockerfile .
```
build container
```
docker create --name core-counter shakesdex
```
run container
```
docker run -p 5090:5090 shakesdex
```

## Usage

Test if page is working at all
go to http://localhost:5090/Pokemon/testing 
and then go to http://localhost:5090/swagger
REMEMBER TO USE HTTP and NOT HTTPS

Swagger page shows to location and arguments of all the endpoints.

Project is based on a weather prediction template
The new classes are:
PokemonController
PokeApiFetcher
ShakespeareTranslator
Dockerfile

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
