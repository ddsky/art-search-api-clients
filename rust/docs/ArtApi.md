# \ArtApi

All URIs are relative to *https://api.artsearch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**random_artwork**](ArtApi.md#random_artwork) | **GET** /artworks/random | Random Artwork
[**retrieve_artwork_by_id**](ArtApi.md#retrieve_artwork_by_id) | **GET** /artworks/{id} | Retrieve Artwork by Id
[**search_artworks**](ArtApi.md#search_artworks) | **GET** /artworks | Search Artworks



## random_artwork

> models::RetrieveArtworkById200Response random_artwork()
Random Artwork

Get one random artwork from our vast collection. The API returns comprehensive details including the title, high-quality image URL, creation date range, and a rich description providing historical and artistic context.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::RetrieveArtworkById200Response**](retrieveArtworkById_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## retrieve_artwork_by_id

> models::RetrieveArtworkById200Response retrieve_artwork_by_id(id)
Retrieve Artwork by Id

Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The id of the artwork. | [required] |

### Return type

[**models::RetrieveArtworkById200Response**](retrieveArtworkById_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_artworks

> models::SearchArtworks200Response search_artworks(query, earliest_start_date, latest_start_date, earliest_end_date, latest_end_date, min_ratio, max_ratio, r#type, material, technique, origin, offset, number)
Search Artworks

Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | Option<**String**> | The search query. |  |
**earliest_start_date** | Option<**i32**> | The artwork must have been created after this date. |  |
**latest_start_date** | Option<**i32**> | The artwork must have been created before this date. |  |
**earliest_end_date** | Option<**i32**> | For artworks with a period of creation, the completion date must be after this date. |  |
**latest_end_date** | Option<**i32**> | For artworks with a period of creation, the completion date must be before this date. |  |
**min_ratio** | Option<**f64**> | The minimum aspect ratio (width/height) the artwork image must have. |  |
**max_ratio** | Option<**f64**> | The maximum aspect ratio (width/height) the artwork image must have. |  |
**r#type** | Option<**String**> | The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy. |  |
**material** | Option<**String**> | The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood. |  |
**technique** | Option<**String**> | The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging. |  |
**origin** | Option<**String**> | The country or region of origin for the artwork |  |
**offset** | Option<**i32**> | The number of artworks to skip in range [0,1000] |  |
**number** | Option<**i32**> | The number of artworks to return in range [1,10] |  |

### Return type

[**models::SearchArtworks200Response**](searchArtworks_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

