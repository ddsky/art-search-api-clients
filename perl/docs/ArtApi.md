# WWW::OpenAPIClient::ArtApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::ArtApi;
```

All URIs are relative to *https://api.artsearch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**random_artwork**](ArtApi.md#random_artwork) | **GET** /artworks/random | Random Artwork
[**retrieve_artwork_by_id**](ArtApi.md#retrieve_artwork_by_id) | **GET** /artworks/{id} | Retrieve Artwork by Id
[**search_artworks**](ArtApi.md#search_artworks) | **GET** /artworks | Search Artworks


# **random_artwork**
> RetrieveArtworkById200Response random_artwork()

Random Artwork

Get one random artwork from our vast collection. The API returns comprehensive details including the title, high-quality image URL, creation date range, and a rich description providing historical and artistic context.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ArtApi;
my $api_instance = WWW::OpenAPIClient::ArtApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);


eval {
    my $result = $api_instance->random_artwork();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ArtApi->random_artwork: $@\n";
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieve_artwork_by_id**
> RetrieveArtworkById200Response retrieve_artwork_by_id(id => $id)

Retrieve Artwork by Id

Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ArtApi;
my $api_instance = WWW::OpenAPIClient::ArtApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $id = 26226350; # int | The id of the artwork.

eval {
    my $result = $api_instance->retrieve_artwork_by_id(id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ArtApi->retrieve_artwork_by_id: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the artwork. | 

### Return type

[**RetrieveArtworkById200Response**](RetrieveArtworkById200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_artworks**
> SearchArtworks200Response search_artworks(query => $query, earliest_start_date => $earliest_start_date, latest_start_date => $latest_start_date, earliest_end_date => $earliest_end_date, latest_end_date => $latest_end_date, min_ratio => $min_ratio, max_ratio => $max_ratio, type => $type, material => $material, technique => $technique, origin => $origin, offset => $offset, number => $number)

Search Artworks

Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::ArtApi;
my $api_instance = WWW::OpenAPIClient::ArtApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $query = landscape paintings; # string | The search query.
my $earliest_start_date = 1750; # int | The artwork must have been created after this date.
my $latest_start_date = 1755; # int | The artwork must have been created before this date.
my $earliest_end_date = 1751; # int | For artworks with a period of creation, the completion date must be after this date.
my $latest_end_date = 1760; # int | For artworks with a period of creation, the completion date must be before this date.
my $min_ratio = 0.8; # double | The minimum aspect ratio (width/height) the artwork image must have.
my $max_ratio = 1.5; # double | The maximum aspect ratio (width/height) the artwork image must have.
my $type = painting; # string | The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy.
my $material = ivory; # string | The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood.
my $technique = etching; # string | The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging.
my $origin = Italy; # string | The country or region of origin for the artwork
my $offset = 0; # int | The number of artworks to skip in range [0,1000]
my $number = 10; # int | The number of artworks to return in range [1,10]

eval {
    my $result = $api_instance->search_artworks(query => $query, earliest_start_date => $earliest_start_date, latest_start_date => $latest_start_date, earliest_end_date => $earliest_end_date, latest_end_date => $latest_end_date, min_ratio => $min_ratio, max_ratio => $max_ratio, type => $type, material => $material, technique => $technique, origin => $origin, offset => $offset, number => $number);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ArtApi->search_artworks: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string**| The search query. | [optional] 
 **earliest_start_date** | **int**| The artwork must have been created after this date. | [optional] 
 **latest_start_date** | **int**| The artwork must have been created before this date. | [optional] 
 **earliest_end_date** | **int**| For artworks with a period of creation, the completion date must be after this date. | [optional] 
 **latest_end_date** | **int**| For artworks with a period of creation, the completion date must be before this date. | [optional] 
 **min_ratio** | **double**| The minimum aspect ratio (width/height) the artwork image must have. | [optional] 
 **max_ratio** | **double**| The maximum aspect ratio (width/height) the artwork image must have. | [optional] 
 **type** | **string**| The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy. | [optional] 
 **material** | **string**| The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood. | [optional] 
 **technique** | **string**| The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging. | [optional] 
 **origin** | **string**| The country or region of origin for the artwork | [optional] 
 **offset** | **int**| The number of artworks to skip in range [0,1000] | [optional] 
 **number** | **int**| The number of artworks to return in range [1,10] | [optional] 

### Return type

[**SearchArtworks200Response**](SearchArtworks200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

