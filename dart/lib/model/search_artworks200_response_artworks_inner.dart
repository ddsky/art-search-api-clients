//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchArtworks200ResponseArtworksInner {
  /// Returns a new [SearchArtworks200ResponseArtworksInner] instance.
  SearchArtworks200ResponseArtworksInner({
    this.title,
    this.image,
    this.id,
  });

  String? title;

  String? image;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchArtworks200ResponseArtworksInner &&
    other.title == title &&
    other.image == image &&
    other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (image == null ? 0 : image!.hashCode) +
    (id == null ? 0 : id!.hashCode);

  @override
  String toString() => 'SearchArtworks200ResponseArtworksInner[title=$title, image=$image, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    return json;
  }

  /// Returns a new [SearchArtworks200ResponseArtworksInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchArtworks200ResponseArtworksInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchArtworks200ResponseArtworksInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchArtworks200ResponseArtworksInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchArtworks200ResponseArtworksInner(
        title: mapValueOfType<String>(json, r'title'),
        image: mapValueOfType<String>(json, r'image'),
        id: mapValueOfType<int>(json, r'id'),
      );
    }
    return null;
  }

  static List<SearchArtworks200ResponseArtworksInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchArtworks200ResponseArtworksInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchArtworks200ResponseArtworksInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchArtworks200ResponseArtworksInner> mapFromJson(dynamic json) {
    final map = <String, SearchArtworks200ResponseArtworksInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchArtworks200ResponseArtworksInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchArtworks200ResponseArtworksInner-objects as value to a dart map
  static Map<String, List<SearchArtworks200ResponseArtworksInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchArtworks200ResponseArtworksInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchArtworks200ResponseArtworksInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

