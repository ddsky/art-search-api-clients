# ArtApi

All URIs are relative to *https://api.artsearch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**randomArtwork**](ArtApi.md#randomArtwork) | **GET** /artworks/random | Random Artwork
[**retrieveArtworkById**](ArtApi.md#retrieveArtworkById) | **GET** /artworks/{id} | Retrieve Artwork by Id
[**searchArtworks**](ArtApi.md#searchArtworks) | **GET** /artworks | Search Artworks



## randomArtwork

> RetrieveArtworkById200Response randomArtwork()

Random Artwork

Get one random artwork from our vast collection. The API returns comprehensive details including the title, high-quality image URL, creation date range, and a rich description providing historical and artistic context.

### Example

```java
// Import classes:
//import io.artsearch.ArtApi;

ArtApi apiInstance = new ArtApi();
try {
    RetrieveArtworkById200Response result = apiInstance.randomArtwork();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ArtApi#randomArtwork");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**RetrieveArtworkById200Response**](RetrieveArtworkById200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieveArtworkById

> RetrieveArtworkById200Response retrieveArtworkById(id)

Retrieve Artwork by Id

Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.

### Example

```java
// Import classes:
//import io.artsearch.ArtApi;

ArtApi apiInstance = new ArtApi();
Integer id = 26226350; // Integer | The id of the artwork.
try {
    RetrieveArtworkById200Response result = apiInstance.retrieveArtworkById(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ArtApi#retrieveArtworkById");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The id of the artwork. | [default to null]

### Return type

[**RetrieveArtworkById200Response**](RetrieveArtworkById200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchArtworks

> SearchArtworks200Response searchArtworks(query, earliestStartDate, latestStartDate, earliestEndDate, latestEndDate, minRatio, maxRatio, type, material, technique, origin, offset, number)

Search Artworks

Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.

### Example

```java
// Import classes:
//import io.artsearch.ArtApi;

ArtApi apiInstance = new ArtApi();
String query = landscape paintings; // String | The search query.
Integer earliestStartDate = 1750; // Integer | The artwork must have been created after this date.
Integer latestStartDate = 1755; // Integer | The artwork must have been created before this date.
Integer earliestEndDate = 1751; // Integer | For artworks with a period of creation, the completion date must be after this date.
Integer latestEndDate = 1760; // Integer | For artworks with a period of creation, the completion date must be before this date.
Double minRatio = 0.8; // Double | The minimum aspect ratio (width/height) the artwork image must have.
Double maxRatio = 1.5; // Double | The maximum aspect ratio (width/height) the artwork image must have.
String type = painting; // String | The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy.
String material = ivory; // String | The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood.
String technique = etching; // String | The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging.
String origin = Italy; // String | The country or region of origin for the artwork
Integer offset = 0; // Integer | The number of artworks to skip in range [0,1000]
Integer number = 10; // Integer | The number of artworks to return in range [1,10]
try {
    SearchArtworks200Response result = apiInstance.searchArtworks(query, earliestStartDate, latestStartDate, earliestEndDate, latestEndDate, minRatio, maxRatio, type, material, technique, origin, offset, number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ArtApi#searchArtworks");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| The search query. | [optional] [default to null]
 **earliestStartDate** | **Integer**| The artwork must have been created after this date. | [optional] [default to null]
 **latestStartDate** | **Integer**| The artwork must have been created before this date. | [optional] [default to null]
 **earliestEndDate** | **Integer**| For artworks with a period of creation, the completion date must be after this date. | [optional] [default to null]
 **latestEndDate** | **Integer**| For artworks with a period of creation, the completion date must be before this date. | [optional] [default to null]
 **minRatio** | **Double**| The minimum aspect ratio (width/height) the artwork image must have. | [optional] [default to null]
 **maxRatio** | **Double**| The maximum aspect ratio (width/height) the artwork image must have. | [optional] [default to null]
 **type** | **String**| The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy. | [optional] [default to null]
 **material** | **String**| The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood. | [optional] [default to null]
 **technique** | **String**| The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging. | [optional] [default to null]
 **origin** | **String**| The country or region of origin for the artwork | [optional] [default to null]
 **offset** | **Integer**| The number of artworks to skip in range [0,1000] | [optional] [default to null]
 **number** | **Integer**| The number of artworks to return in range [1,10] | [optional] [default to null]

### Return type

[**SearchArtworks200Response**](SearchArtworks200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

