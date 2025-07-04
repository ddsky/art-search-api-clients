/**
 * Art Search API
 * Art Search let\'s you search and discover over one million pieces of historic art.
 *
 * OpenAPI spec version: 1.0.0
 * Contact: mail@artsearch.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { HttpFile } from '../http/http';

export class SearchArtworks200ResponseArtworksInner {
    'title'?: string | null;
    'image'?: string | null;
    'id'?: number;

    static readonly discriminator: string | undefined = undefined;

    static readonly attributeTypeMap: Array<{name: string, baseName: string, type: string, format: string}> = [
        {
            "name": "title",
            "baseName": "title",
            "type": "string",
            "format": ""
        },
        {
            "name": "image",
            "baseName": "image",
            "type": "string",
            "format": ""
        },
        {
            "name": "id",
            "baseName": "id",
            "type": "number",
            "format": ""
        }    ];

    static getAttributeTypeMap() {
        return SearchArtworks200ResponseArtworksInner.attributeTypeMap;
    }

    public constructor() {
    }
}

