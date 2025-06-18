//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchArtworks200Response {
  /// Returns a new [SearchArtworks200Response] instance.
  SearchArtworks200Response({
    this.available,
    this.number,
    this.offset,
    this.artworks = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? available;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? number;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? offset;

  List<SearchArtworks200ResponseArtworksInner> artworks;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchArtworks200Response &&
    other.available == available &&
    other.number == number &&
    other.offset == offset &&
    _deepEquality.equals(other.artworks, artworks);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (available == null ? 0 : available!.hashCode) +
    (number == null ? 0 : number!.hashCode) +
    (offset == null ? 0 : offset!.hashCode) +
    (artworks.hashCode);

  @override
  String toString() => 'SearchArtworks200Response[available=$available, number=$number, offset=$offset, artworks=$artworks]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    if (this.number != null) {
      json[r'number'] = this.number;
    } else {
      json[r'number'] = null;
    }
    if (this.offset != null) {
      json[r'offset'] = this.offset;
    } else {
      json[r'offset'] = null;
    }
      json[r'artworks'] = this.artworks;
    return json;
  }

  /// Returns a new [SearchArtworks200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchArtworks200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchArtworks200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchArtworks200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchArtworks200Response(
        available: mapValueOfType<int>(json, r'available'),
        number: mapValueOfType<int>(json, r'number'),
        offset: mapValueOfType<int>(json, r'offset'),
        artworks: SearchArtworks200ResponseArtworksInner.listFromJson(json[r'artworks']),
      );
    }
    return null;
  }

  static List<SearchArtworks200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchArtworks200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchArtworks200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchArtworks200Response> mapFromJson(dynamic json) {
    final map = <String, SearchArtworks200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchArtworks200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchArtworks200Response-objects as value to a dart map
  static Map<String, List<SearchArtworks200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchArtworks200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchArtworks200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

