# \ArtAPI

All URIs are relative to *https://api.artsearch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**RandomArtwork**](ArtAPI.md#RandomArtwork) | **Get** /artworks/random | Random Artwork
[**RetrieveArtworkById**](ArtAPI.md#RetrieveArtworkById) | **Get** /artworks/{id} | Retrieve Artwork by Id
[**SearchArtworks**](ArtAPI.md#SearchArtworks) | **Get** /artworks | Search Artworks



## RandomArtwork

> RetrieveArtworkById200Response RandomArtwork(ctx).Execute()

Random Artwork



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/art-search-api-clients/tree/master/go/"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ArtAPI.RandomArtwork(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ArtAPI.RandomArtwork``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RandomArtwork`: RetrieveArtworkById200Response
	fmt.Fprintf(os.Stdout, "Response from `ArtAPI.RandomArtwork`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiRandomArtworkRequest struct via the builder pattern


### Return type

[**RetrieveArtworkById200Response**](RetrieveArtworkById200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RetrieveArtworkById

> RetrieveArtworkById200Response RetrieveArtworkById(ctx, id).Execute()

Retrieve Artwork by Id



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/art-search-api-clients/tree/master/go/"
)

func main() {
	id := int32(26226350) // int32 | The id of the artwork.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ArtAPI.RetrieveArtworkById(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ArtAPI.RetrieveArtworkById``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RetrieveArtworkById`: RetrieveArtworkById200Response
	fmt.Fprintf(os.Stdout, "Response from `ArtAPI.RetrieveArtworkById`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The id of the artwork. | 

### Other Parameters

Other parameters are passed through a pointer to a apiRetrieveArtworkByIdRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**RetrieveArtworkById200Response**](RetrieveArtworkById200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchArtworks

> SearchArtworks200Response SearchArtworks(ctx).Query(query).EarliestStartDate(earliestStartDate).LatestStartDate(latestStartDate).EarliestEndDate(earliestEndDate).LatestEndDate(latestEndDate).MinRatio(minRatio).MaxRatio(maxRatio).Type_(type_).Material(material).Technique(technique).Origin(origin).Offset(offset).Number(number).Execute()

Search Artworks



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/art-search-api-clients/tree/master/go/"
)

func main() {
	query := "landscape paintings" // string | The search query. (optional)
	earliestStartDate := int32(1750) // int32 | The artwork must have been created after this date. (optional)
	latestStartDate := int32(1755) // int32 | The artwork must have been created before this date. (optional)
	earliestEndDate := int32(1751) // int32 | For artworks with a period of creation, the completion date must be after this date. (optional)
	latestEndDate := int32(1760) // int32 | For artworks with a period of creation, the completion date must be before this date. (optional)
	minRatio := float64(0.8) // float64 | The minimum aspect ratio (width/height) the artwork image must have. (optional)
	maxRatio := float64(1.5) // float64 | The maximum aspect ratio (width/height) the artwork image must have. (optional)
	type_ := "painting" // string | The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy. (optional)
	material := "ivory" // string | The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood. (optional)
	technique := "etching" // string | The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging. (optional)
	origin := "Italy" // string | The country or region of origin for the artwork (optional)
	offset := int32(0) // int32 | The number of artworks to skip in range [0,1000] (optional)
	number := int32(10) // int32 | The number of artworks to return in range [1,10] (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ArtAPI.SearchArtworks(context.Background()).Query(query).EarliestStartDate(earliestStartDate).LatestStartDate(latestStartDate).EarliestEndDate(earliestEndDate).LatestEndDate(latestEndDate).MinRatio(minRatio).MaxRatio(maxRatio).Type_(type_).Material(material).Technique(technique).Origin(origin).Offset(offset).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ArtAPI.SearchArtworks``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchArtworks`: SearchArtworks200Response
	fmt.Fprintf(os.Stdout, "Response from `ArtAPI.SearchArtworks`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchArtworksRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The search query. | 
 **earliestStartDate** | **int32** | The artwork must have been created after this date. | 
 **latestStartDate** | **int32** | The artwork must have been created before this date. | 
 **earliestEndDate** | **int32** | For artworks with a period of creation, the completion date must be after this date. | 
 **latestEndDate** | **int32** | For artworks with a period of creation, the completion date must be before this date. | 
 **minRatio** | **float64** | The minimum aspect ratio (width/height) the artwork image must have. | 
 **maxRatio** | **float64** | The maximum aspect ratio (width/height) the artwork image must have. | 
 **type_** | **string** | The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy. | 
 **material** | **string** | The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood. | 
 **technique** | **string** | The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging. | 
 **origin** | **string** | The country or region of origin for the artwork | 
 **offset** | **int32** | The number of artworks to skip in range [0,1000] | 
 **number** | **int32** | The number of artworks to return in range [1,10] | 

### Return type

[**SearchArtworks200Response**](SearchArtworks200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

