/**
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 *
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package io.artsearch.client.model


import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param title 
 * @param image 
 * @param id 
 */


data class SearchArtworks200ResponseArtworksInner (

    @Json(name = "title")
    val title: kotlin.String? = null,

    @Json(name = "image")
    val image: kotlin.String? = null,

    @Json(name = "id")
    val id: kotlin.Int? = null

) {


}

