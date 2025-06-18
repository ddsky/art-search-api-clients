# ArtApi

All URIs are relative to *https://api.artsearch.io*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**randomArtwork**](ArtApi.md#randomArtwork) | **GET** /artworks/random | Random Artwork |
| [**retrieveArtworkById**](ArtApi.md#retrieveArtworkById) | **GET** /artworks/{id} | Retrieve Artwork by Id |
| [**searchArtworks**](ArtApi.md#searchArtworks) | **GET** /artworks | Search Artworks |


<a id="randomArtwork"></a>
# **randomArtwork**
> RetrieveArtworkById200Response randomArtwork()

Random Artwork

Get one random artwork from our vast collection. The API returns comprehensive details including the title, high-quality image URL, creation date range, and a rich description providing historical and artistic context.

### Example
```kotlin
// Import classes:
//import artsearch.infrastructure.*
//import io.artsearch.client.model.*

val apiInstance = ArtApi()
try {
    val result : RetrieveArtworkById200Response = apiInstance.randomArtwork()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ArtApi#randomArtwork")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ArtApi#randomArtwork")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RetrieveArtworkById200Response**](RetrieveArtworkById200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="retrieveArtworkById"></a>
# **retrieveArtworkById**
> RetrieveArtworkById200Response retrieveArtworkById(id)

Retrieve Artwork by Id

Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.

### Example
```kotlin
// Import classes:
//import artsearch.infrastructure.*
//import io.artsearch.client.model.*

val apiInstance = ArtApi()
val id : kotlin.Int = 26226350 // kotlin.Int | The id of the artwork.
try {
    val result : RetrieveArtworkById200Response = apiInstance.retrieveArtworkById(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ArtApi#retrieveArtworkById")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ArtApi#retrieveArtworkById")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.Int**| The id of the artwork. | |

### Return type

[**RetrieveArtworkById200Response**](RetrieveArtworkById200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="searchArtworks"></a>
# **searchArtworks**
> SearchArtworks200Response searchArtworks(query, earliestStartDate, latestStartDate, earliestEndDate, latestEndDate, minRatio, maxRatio, type, material, technique, origin, offset, number)

Search Artworks

Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.

### Example
```kotlin
// Import classes:
//import artsearch.infrastructure.*
//import io.artsearch.client.model.*

val apiInstance = ArtApi()
val query : kotlin.String = landscape paintings // kotlin.String | The search query.
val earliestStartDate : kotlin.Int = 1750 // kotlin.Int | The artwork must have been created after this date.
val latestStartDate : kotlin.Int = 1755 // kotlin.Int | The artwork must have been created before this date.
val earliestEndDate : kotlin.Int = 1751 // kotlin.Int | For artworks with a period of creation, the completion date must be after this date.
val latestEndDate : kotlin.Int = 1760 // kotlin.Int | For artworks with a period of creation, the completion date must be before this date.
val minRatio : kotlin.Double = 0.8 // kotlin.Double | The minimum aspect ratio (width/height) the artwork image must have.
val maxRatio : kotlin.Double = 1.5 // kotlin.Double | The maximum aspect ratio (width/height) the artwork image must have.
val type : kotlin.String = painting // kotlin.String | The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy.
val material : kotlin.String = ivory // kotlin.String | The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood.
val technique : kotlin.String = etching // kotlin.String | The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging.
val origin : kotlin.String = Italy // kotlin.String | The country or region of origin for the artwork
val offset : kotlin.Int = 0 // kotlin.Int | The number of artworks to skip in range [0,1000]
val number : kotlin.Int = 10 // kotlin.Int | The number of artworks to return in range [1,10]
try {
    val result : SearchArtworks200Response = apiInstance.searchArtworks(query, earliestStartDate, latestStartDate, earliestEndDate, latestEndDate, minRatio, maxRatio, type, material, technique, origin, offset, number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ArtApi#searchArtworks")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ArtApi#searchArtworks")
    e.printStackTrace()
}
```

### Parameters
| **query** | **kotlin.String**| The search query. | [optional] |
| **earliestStartDate** | **kotlin.Int**| The artwork must have been created after this date. | [optional] |
| **latestStartDate** | **kotlin.Int**| The artwork must have been created before this date. | [optional] |
| **earliestEndDate** | **kotlin.Int**| For artworks with a period of creation, the completion date must be after this date. | [optional] |
| **latestEndDate** | **kotlin.Int**| For artworks with a period of creation, the completion date must be before this date. | [optional] |
| **minRatio** | **kotlin.Double**| The minimum aspect ratio (width/height) the artwork image must have. | [optional] |
| **maxRatio** | **kotlin.Double**| The maximum aspect ratio (width/height) the artwork image must have. | [optional] |
| **type** | **kotlin.String**| The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy. | [optional] |
| **material** | **kotlin.String**| The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood. | [optional] |
| **technique** | **kotlin.String**| The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging. | [optional] |
| **origin** | **kotlin.String**| The country or region of origin for the artwork | [optional] |
| **offset** | **kotlin.Int**| The number of artworks to skip in range [0,1000] | [optional] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **number** | **kotlin.Int**| The number of artworks to return in range [1,10] | [optional] |

### Return type

[**SearchArtworks200Response**](SearchArtworks200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

