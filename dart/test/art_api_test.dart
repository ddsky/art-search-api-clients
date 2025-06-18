//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for ArtApi
void main() {
  // final instance = ArtApi();

  group('tests for ArtApi', () {
    // Random Artwork
    //
    // Get one random artwork from our vast collection. The API returns comprehensive details including the title, high-quality image URL, creation date range, and a rich description providing historical and artistic context.
    //
    //Future<RetrieveArtworkById200Response> randomArtwork() async
    test('test randomArtwork', () async {
      // TODO
    });

    // Retrieve Artwork by Id
    //
    // Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.
    //
    //Future<RetrieveArtworkById200Response> retrieveArtworkById(int id) async
    test('test retrieveArtworkById', () async {
      // TODO
    });

    // Search Artworks
    //
    // Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.
    //
    //Future<SearchArtworks200Response> searchArtworks({ String query, int earliestStartDate, int latestStartDate, int earliestEndDate, int latestEndDate, double minRatio, double maxRatio, String type, String material, String technique, String origin, int offset, int number }) async
    test('test searchArtworks', () async {
      // TODO
    });

  });
}
