/**
 * Art Search API
 * Art Search let\'s you search and discover over one million pieces of historic art.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: mail@artsearch.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { SearchArtworks200ResponseArtworksInner } from './searchArtworks200ResponseArtworksInner';


export interface SearchArtworks200Response { 
    available?: number;
    number?: number;
    offset?: number;
    artworks?: Array<SearchArtworks200ResponseArtworksInner>;
}

