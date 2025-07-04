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
pub struct SearchArtworks200ResponseArtworksInner {
    #[serde(rename = "title", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub title: Option<Option<String>>,
    #[serde(rename = "image", default, with = "::serde_with::rust::double_option", skip_serializing_if = "Option::is_none")]
    pub image: Option<Option<String>>,
    #[serde(rename = "id", skip_serializing_if = "Option::is_none")]
    pub id: Option<i32>,
}

impl SearchArtworks200ResponseArtworksInner {
    pub fn new() -> SearchArtworks200ResponseArtworksInner {
        SearchArtworks200ResponseArtworksInner {
            title: None,
            image: None,
            id: None,
        }
    }
}

