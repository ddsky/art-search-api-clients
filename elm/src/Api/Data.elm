{-
   Art Search API
   Art Search let's you search and discover over one million pieces of historic art.

   The version of the OpenAPI document: 1.0.0
   Contact: mail@artsearch.io

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git

   DO NOT EDIT THIS FILE MANUALLY.

   For more info on generating Elm code, see https://eriktim.github.io/openapi-elm/
-}


module Api.Data exposing
    ( RetrieveArtworkById200Response
    , SearchArtworks200Response
    , SearchArtworks200ResponseArtworksInner
    , encodeRetrieveArtworkById200Response
    , encodeSearchArtworks200Response
    , encodeSearchArtworks200ResponseArtworksInner
    , retrieveArtworkById200ResponseDecoder
    , searchArtworks200ResponseDecoder
    , searchArtworks200ResponseArtworksInnerDecoder
    )

import Api
import Dict
import Json.Decode
import Json.Encode


-- MODEL


type alias RetrieveArtworkById200Response =
    { id : Maybe Int
    , title : Maybe String
    , image : Maybe String
    , startDate : Maybe Int
    , endDate : Maybe Int
    , description : Maybe String
    }


type alias SearchArtworks200Response =
    { available : Maybe Int
    , number : Maybe Int
    , offset : Maybe Int
    , artworks : Maybe ( List SearchArtworks200ResponseArtworksInner )
    }


type alias SearchArtworks200ResponseArtworksInner =
    { title : Maybe String
    , image : Maybe String
    , id : Maybe Int
    }


-- ENCODER


encodeRetrieveArtworkById200Response : RetrieveArtworkById200Response -> Json.Encode.Value
encodeRetrieveArtworkById200Response =
    encodeObject << encodeRetrieveArtworkById200ResponsePairs


encodeRetrieveArtworkById200ResponseWithTag : ( String, String ) -> RetrieveArtworkById200Response -> Json.Encode.Value
encodeRetrieveArtworkById200ResponseWithTag (tagField, tag) model =
    encodeObject (encodeRetrieveArtworkById200ResponsePairs model ++ [ encode tagField Json.Encode.string tag ])


encodeRetrieveArtworkById200ResponsePairs : RetrieveArtworkById200Response -> List EncodedField
encodeRetrieveArtworkById200ResponsePairs model =
    let
        pairs =
            [ maybeEncode "id" Json.Encode.int model.id
            , maybeEncodeNullable "title" Json.Encode.string model.title
            , maybeEncodeNullable "image" Json.Encode.string model.image
            , maybeEncode "start_date" Json.Encode.int model.startDate
            , maybeEncode "end_date" Json.Encode.int model.endDate
            , maybeEncodeNullable "description" Json.Encode.string model.description
            ]
    in
    pairs


encodeSearchArtworks200Response : SearchArtworks200Response -> Json.Encode.Value
encodeSearchArtworks200Response =
    encodeObject << encodeSearchArtworks200ResponsePairs


encodeSearchArtworks200ResponseWithTag : ( String, String ) -> SearchArtworks200Response -> Json.Encode.Value
encodeSearchArtworks200ResponseWithTag (tagField, tag) model =
    encodeObject (encodeSearchArtworks200ResponsePairs model ++ [ encode tagField Json.Encode.string tag ])


encodeSearchArtworks200ResponsePairs : SearchArtworks200Response -> List EncodedField
encodeSearchArtworks200ResponsePairs model =
    let
        pairs =
            [ maybeEncode "available" Json.Encode.int model.available
            , maybeEncode "number" Json.Encode.int model.number
            , maybeEncode "offset" Json.Encode.int model.offset
            , maybeEncode "artworks" (Json.Encode.list encodeSearchArtworks200ResponseArtworksInner) model.artworks
            ]
    in
    pairs


encodeSearchArtworks200ResponseArtworksInner : SearchArtworks200ResponseArtworksInner -> Json.Encode.Value
encodeSearchArtworks200ResponseArtworksInner =
    encodeObject << encodeSearchArtworks200ResponseArtworksInnerPairs


encodeSearchArtworks200ResponseArtworksInnerWithTag : ( String, String ) -> SearchArtworks200ResponseArtworksInner -> Json.Encode.Value
encodeSearchArtworks200ResponseArtworksInnerWithTag (tagField, tag) model =
    encodeObject (encodeSearchArtworks200ResponseArtworksInnerPairs model ++ [ encode tagField Json.Encode.string tag ])


encodeSearchArtworks200ResponseArtworksInnerPairs : SearchArtworks200ResponseArtworksInner -> List EncodedField
encodeSearchArtworks200ResponseArtworksInnerPairs model =
    let
        pairs =
            [ maybeEncodeNullable "title" Json.Encode.string model.title
            , maybeEncodeNullable "image" Json.Encode.string model.image
            , maybeEncode "id" Json.Encode.int model.id
            ]
    in
    pairs


-- DECODER


retrieveArtworkById200ResponseDecoder : Json.Decode.Decoder RetrieveArtworkById200Response
retrieveArtworkById200ResponseDecoder =
    Json.Decode.succeed RetrieveArtworkById200Response
        |> maybeDecode "id" Json.Decode.int Nothing
        |> maybeDecodeNullable "title" Json.Decode.string Nothing
        |> maybeDecodeNullable "image" Json.Decode.string Nothing
        |> maybeDecode "start_date" Json.Decode.int Nothing
        |> maybeDecode "end_date" Json.Decode.int Nothing
        |> maybeDecodeNullable "description" Json.Decode.string Nothing


searchArtworks200ResponseDecoder : Json.Decode.Decoder SearchArtworks200Response
searchArtworks200ResponseDecoder =
    Json.Decode.succeed SearchArtworks200Response
        |> maybeDecode "available" Json.Decode.int Nothing
        |> maybeDecode "number" Json.Decode.int Nothing
        |> maybeDecode "offset" Json.Decode.int Nothing
        |> maybeDecode "artworks" (Json.Decode.list searchArtworks200ResponseArtworksInnerDecoder) Nothing


searchArtworks200ResponseArtworksInnerDecoder : Json.Decode.Decoder SearchArtworks200ResponseArtworksInner
searchArtworks200ResponseArtworksInnerDecoder =
    Json.Decode.succeed SearchArtworks200ResponseArtworksInner
        |> maybeDecodeNullable "title" Json.Decode.string Nothing
        |> maybeDecodeNullable "image" Json.Decode.string Nothing
        |> maybeDecode "id" Json.Decode.int Nothing




-- HELPER


type alias EncodedField =
    Maybe ( String, Json.Encode.Value )


encodeObject : List EncodedField -> Json.Encode.Value
encodeObject =
    Json.Encode.object << List.filterMap identity


encode : String -> (a -> Json.Encode.Value) -> a -> EncodedField
encode key encoder value =
    Just ( key, encoder value )


encodeNullable : String -> (a -> Json.Encode.Value) -> Maybe a -> EncodedField
encodeNullable key encoder value =
    Just ( key, Maybe.withDefault Json.Encode.null (Maybe.map encoder value) )


maybeEncode : String -> (a -> Json.Encode.Value) -> Maybe a -> EncodedField
maybeEncode key encoder =
    Maybe.map (Tuple.pair key << encoder)


maybeEncodeNullable : String -> (a -> Json.Encode.Value) -> Maybe a -> EncodedField
maybeEncodeNullable =
    encodeNullable


decode : String -> Json.Decode.Decoder a -> Json.Decode.Decoder (a -> b) -> Json.Decode.Decoder b
decode key decoder =
    decodeChain (Json.Decode.field key decoder)


decodeLazy : (a -> c) -> String -> Json.Decode.Decoder a -> Json.Decode.Decoder (c -> b) -> Json.Decode.Decoder b
decodeLazy f key decoder =
    decodeChainLazy f (Json.Decode.field key decoder)


decodeNullable : String -> Json.Decode.Decoder a -> Json.Decode.Decoder (Maybe a -> b) -> Json.Decode.Decoder b
decodeNullable key decoder =
    decodeChain (maybeField key decoder Nothing)


decodeNullableLazy : (Maybe a -> c) -> String -> Json.Decode.Decoder a -> Json.Decode.Decoder (c -> b) -> Json.Decode.Decoder b
decodeNullableLazy f key decoder =
    decodeChainLazy f (maybeField key decoder Nothing)


maybeDecode : String -> Json.Decode.Decoder a -> Maybe a -> Json.Decode.Decoder (Maybe a -> b) -> Json.Decode.Decoder b
maybeDecode key decoder fallback =
    -- let's be kind to null-values as well
    decodeChain (maybeField key decoder fallback)


maybeDecodeLazy : (Maybe a -> c) -> String -> Json.Decode.Decoder a -> Maybe a -> Json.Decode.Decoder (c -> b) -> Json.Decode.Decoder b
maybeDecodeLazy f key decoder fallback =
    -- let's be kind to null-values as well
    decodeChainLazy f (maybeField key decoder fallback)


maybeDecodeNullable : String -> Json.Decode.Decoder a -> Maybe a -> Json.Decode.Decoder (Maybe a -> b) -> Json.Decode.Decoder b
maybeDecodeNullable key decoder fallback =
    decodeChain (maybeField key decoder fallback)


maybeDecodeNullableLazy : (Maybe a -> c) -> String -> Json.Decode.Decoder a -> Maybe a -> Json.Decode.Decoder (c -> b) -> Json.Decode.Decoder b
maybeDecodeNullableLazy f key decoder fallback =
    decodeChainLazy f (maybeField key decoder fallback)


maybeField : String -> Json.Decode.Decoder a -> Maybe a -> Json.Decode.Decoder (Maybe a)
maybeField key decoder fallback =
    let
        fieldDecoder =
            Json.Decode.field key Json.Decode.value

        valueDecoder =
            Json.Decode.oneOf [ Json.Decode.map Just decoder, Json.Decode.null fallback ]

        decodeObject rawObject =
            case Json.Decode.decodeValue fieldDecoder rawObject of
                Ok rawValue ->
                    case Json.Decode.decodeValue valueDecoder rawValue of
                        Ok value ->
                            Json.Decode.succeed value

                        Err error ->
                            Json.Decode.fail (Json.Decode.errorToString error)

                Err _ ->
                    Json.Decode.succeed fallback
    in
    Json.Decode.value
        |> Json.Decode.andThen decodeObject


decodeChain : Json.Decode.Decoder a -> Json.Decode.Decoder (a -> b) -> Json.Decode.Decoder b
decodeChain =
    Json.Decode.map2 (|>)


decodeChainLazy : (a -> c) -> Json.Decode.Decoder a -> Json.Decode.Decoder (c -> b) -> Json.Decode.Decoder b
decodeChainLazy f =
    decodeChain << Json.Decode.map f