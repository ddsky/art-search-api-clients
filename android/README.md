# android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>io.artsearch</groupId>
    <artifactId>android-client</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "io.artsearch:android-client:1.0.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/android-client-1.0.0.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import io.artsearch.ArtApi;

public class ArtApiExample {

    public static void main(String[] args) {
        ArtApi apiInstance = new ArtApi();
        try {
            RetrieveArtworkById200Response result = apiInstance.randomArtwork();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling ArtApi#randomArtwork");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api.artsearch.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ArtApi* | [**randomArtwork**](docs/ArtApi.md#randomArtwork) | **GET** /artworks/random | Random Artwork
*ArtApi* | [**retrieveArtworkById**](docs/ArtApi.md#retrieveArtworkById) | **GET** /artworks/{id} | Retrieve Artwork by Id
*ArtApi* | [**searchArtworks**](docs/ArtApi.md#searchArtworks) | **GET** /artworks | Search Artworks


## Documentation for Models

 - [RetrieveArtworkById200Response](docs/RetrieveArtworkById200Response.md)
 - [SearchArtworks200Response](docs/SearchArtworks200Response.md)
 - [SearchArtworks200ResponseArtworksInner](docs/SearchArtworks200ResponseArtworksInner.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### apiKey

- **Type**: API key

- **API key parameter name**: api-key
- **Location**: URL query string

### headerApiKey

- **Type**: API key

- **API key parameter name**: x-api-key
- **Location**: HTTP header


## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

mail@artsearch.io

