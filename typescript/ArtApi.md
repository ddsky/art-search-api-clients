# .ArtApi

All URIs are relative to *https://api.artsearch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**randomArtwork**](ArtApi.md#randomArtwork) | **GET** /artworks/random | Random Artwork
[**retrieveArtworkById**](ArtApi.md#retrieveArtworkById) | **GET** /artworks/{id} | Retrieve Artwork by Id
[**searchArtworks**](ArtApi.md#searchArtworks) | **GET** /artworks | Search Artworks


# **randomArtwork**
> RetrieveArtworkById200Response randomArtwork()

Get one random artwork from our vast collection. The API returns comprehensive details including the title, high-quality image URL, creation date range, and a rich description providing historical and artistic context.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .ArtApi(configuration);

let body:any = {};

apiInstance.randomArtwork(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters
This endpoint does not need any parameter.


### Return type

**RetrieveArtworkById200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **retrieveArtworkById**
> RetrieveArtworkById200Response retrieveArtworkById()

Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .ArtApi(configuration);

let body:.ArtApiRetrieveArtworkByIdRequest = {
  // number | The id of the artwork.
  id: 26226350,
};

apiInstance.retrieveArtworkById(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**number**] | The id of the artwork. | defaults to undefined


### Return type

**RetrieveArtworkById200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchArtworks**
> SearchArtworks200Response searchArtworks()

Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .ArtApi(configuration);

let body:.ArtApiSearchArtworksRequest = {
  // string | The search query. (optional)
  query: "landscape paintings",
  // number | The artwork must have been created after this date. (optional)
  earliestStartDate: 1750,
  // number | The artwork must have been created before this date. (optional)
  latestStartDate: 1755,
  // number | For artworks with a period of creation, the completion date must be after this date. (optional)
  earliestEndDate: 1751,
  // number | For artworks with a period of creation, the completion date must be before this date. (optional)
  latestEndDate: 1760,
  // number | The minimum aspect ratio (width/height) the artwork image must have. (optional)
  minRatio: 0.8,
  // number | The maximum aspect ratio (width/height) the artwork image must have. (optional)
  maxRatio: 1.5,
  // string | The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy. (optional)
  type: "painting",
  // string | The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood. (optional)
  material: "ivory",
  // string | The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging. (optional)
  technique: "etching",
  // string | The country or region of origin for the artwork (optional)
  origin: "Italy",
  // number | The number of artworks to skip in range [0,1000] (optional)
  offset: 0,
  // number | The number of artworks to return in range [1,10] (optional)
  number: 10,
};

apiInstance.searchArtworks(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | [**string**] | The search query. | (optional) defaults to undefined
 **earliestStartDate** | [**number**] | The artwork must have been created after this date. | (optional) defaults to undefined
 **latestStartDate** | [**number**] | The artwork must have been created before this date. | (optional) defaults to undefined
 **earliestEndDate** | [**number**] | For artworks with a period of creation, the completion date must be after this date. | (optional) defaults to undefined
 **latestEndDate** | [**number**] | For artworks with a period of creation, the completion date must be before this date. | (optional) defaults to undefined
 **minRatio** | [**number**] | The minimum aspect ratio (width/height) the artwork image must have. | (optional) defaults to undefined
 **maxRatio** | [**number**] | The maximum aspect ratio (width/height) the artwork image must have. | (optional) defaults to undefined
 **type** | [**string**] | The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy. | (optional) defaults to undefined
 **material** | [**string**] | The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood. | (optional) defaults to undefined
 **technique** | [**string**] | The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging. | (optional) defaults to undefined
 **origin** | [**string**] | The country or region of origin for the artwork | (optional) defaults to undefined
 **offset** | [**number**] | The number of artworks to skip in range [0,1000] | (optional) defaults to undefined
 **number** | [**number**] | The number of artworks to return in range [1,10] | (optional) defaults to undefined


### Return type

**SearchArtworks200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


