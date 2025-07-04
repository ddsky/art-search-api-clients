/*
 * Art Search API
 *
 * Art Search let's you search and discover over one million pieces of historic art.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: mail@artsearch.io
 * Generated by: https://openapi-generator.tech
 */

use crate::models;
use serde::{Deserialize, Serialize};

#[derive(Clone, Default, Debug, PartialEq, Serialize, Deserialize)]
pub struct SearchArtworks200Response {
    #[serde(rename = "available", skip_serializing_if = "Option::is_none")]
    pub available: Option<i32>,
    #[serde(rename = "number", skip_serializing_if = "Option::is_none")]
    pub number: Option<i32>,
    #[serde(rename = "offset", skip_serializing_if = "Option::is_none")]
    pub offset: Option<i32>,
    #[serde(rename = "artworks", skip_serializing_if = "Option::is_none")]
    pub artworks: Option<Vec<models::SearchArtworks200ResponseArtworksInner>>,
}

impl SearchArtworks200Response {
    pub fn new() -> SearchArtworks200Response {
        SearchArtworks200Response {
            available: None,
            number: None,
            offset: None,
            artworks: None,
        }
    }
}

