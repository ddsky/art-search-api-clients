//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ArtApi {
  ArtApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Random Artwork
  ///
  /// Get one random artwork from our vast collection. The API returns comprehensive details including the title, high-quality image URL, creation date range, and a rich description providing historical and artistic context.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> randomArtworkWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/artworks/random';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Random Artwork
  ///
  /// Get one random artwork from our vast collection. The API returns comprehensive details including the title, high-quality image URL, creation date range, and a rich description providing historical and artistic context.
  Future<RetrieveArtworkById200Response?> randomArtwork() async {
    final response = await randomArtworkWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetrieveArtworkById200Response',) as RetrieveArtworkById200Response;
    
    }
    return null;
  }

  /// Retrieve Artwork by Id
  ///
  /// Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the artwork.
  Future<Response> retrieveArtworkByIdWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/artworks/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Retrieve Artwork by Id
  ///
  /// Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the artwork.
  Future<RetrieveArtworkById200Response?> retrieveArtworkById(int id,) async {
    final response = await retrieveArtworkByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RetrieveArtworkById200Response',) as RetrieveArtworkById200Response;
    
    }
    return null;
  }

  /// Search Artworks
  ///
  /// Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   The search query.
  ///
  /// * [int] earliestStartDate:
  ///   The artwork must have been created after this date.
  ///
  /// * [int] latestStartDate:
  ///   The artwork must have been created before this date.
  ///
  /// * [int] earliestEndDate:
  ///   For artworks with a period of creation, the completion date must be after this date.
  ///
  /// * [int] latestEndDate:
  ///   For artworks with a period of creation, the completion date must be before this date.
  ///
  /// * [double] minRatio:
  ///   The minimum aspect ratio (width/height) the artwork image must have.
  ///
  /// * [double] maxRatio:
  ///   The maximum aspect ratio (width/height) the artwork image must have.
  ///
  /// * [String] type:
  ///   The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy.
  ///
  /// * [String] material:
  ///   The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood.
  ///
  /// * [String] technique:
  ///   The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging.
  ///
  /// * [String] origin:
  ///   The country or region of origin for the artwork
  ///
  /// * [int] offset:
  ///   The number of artworks to skip in range [0,1000]
  ///
  /// * [int] number:
  ///   The number of artworks to return in range [1,10]
  Future<Response> searchArtworksWithHttpInfo({ String? query, int? earliestStartDate, int? latestStartDate, int? earliestEndDate, int? latestEndDate, double? minRatio, double? maxRatio, String? type, String? material, String? technique, String? origin, int? offset, int? number, }) async {
    // ignore: prefer_const_declarations
    final path = r'/artworks';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (earliestStartDate != null) {
      queryParams.addAll(_queryParams('', 'earliest-start-date', earliestStartDate));
    }
    if (latestStartDate != null) {
      queryParams.addAll(_queryParams('', 'latest-start-date', latestStartDate));
    }
    if (earliestEndDate != null) {
      queryParams.addAll(_queryParams('', 'earliest-end-date', earliestEndDate));
    }
    if (latestEndDate != null) {
      queryParams.addAll(_queryParams('', 'latest-end-date', latestEndDate));
    }
    if (minRatio != null) {
      queryParams.addAll(_queryParams('', 'min-ratio', minRatio));
    }
    if (maxRatio != null) {
      queryParams.addAll(_queryParams('', 'max-ratio', maxRatio));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }
    if (material != null) {
      queryParams.addAll(_queryParams('', 'material', material));
    }
    if (technique != null) {
      queryParams.addAll(_queryParams('', 'technique', technique));
    }
    if (origin != null) {
      queryParams.addAll(_queryParams('', 'origin', origin));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Search Artworks
  ///
  /// Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.
  ///
  /// Parameters:
  ///
  /// * [String] query:
  ///   The search query.
  ///
  /// * [int] earliestStartDate:
  ///   The artwork must have been created after this date.
  ///
  /// * [int] latestStartDate:
  ///   The artwork must have been created before this date.
  ///
  /// * [int] earliestEndDate:
  ///   For artworks with a period of creation, the completion date must be after this date.
  ///
  /// * [int] latestEndDate:
  ///   For artworks with a period of creation, the completion date must be before this date.
  ///
  /// * [double] minRatio:
  ///   The minimum aspect ratio (width/height) the artwork image must have.
  ///
  /// * [double] maxRatio:
  ///   The maximum aspect ratio (width/height) the artwork image must have.
  ///
  /// * [String] type:
  ///   The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy.
  ///
  /// * [String] material:
  ///   The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood.
  ///
  /// * [String] technique:
  ///   The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging.
  ///
  /// * [String] origin:
  ///   The country or region of origin for the artwork
  ///
  /// * [int] offset:
  ///   The number of artworks to skip in range [0,1000]
  ///
  /// * [int] number:
  ///   The number of artworks to return in range [1,10]
  Future<SearchArtworks200Response?> searchArtworks({ String? query, int? earliestStartDate, int? latestStartDate, int? earliestEndDate, int? latestEndDate, double? minRatio, double? maxRatio, String? type, String? material, String? technique, String? origin, int? offset, int? number, }) async {
    final response = await searchArtworksWithHttpInfo( query: query, earliestStartDate: earliestStartDate, latestStartDate: latestStartDate, earliestEndDate: earliestEndDate, latestEndDate: latestEndDate, minRatio: minRatio, maxRatio: maxRatio, type: type, material: material, technique: technique, origin: origin, offset: offset, number: number, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchArtworks200Response',) as SearchArtworks200Response;
    
    }
    return null;
  }
}
