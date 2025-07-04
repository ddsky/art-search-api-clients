{-
   Art Search API

   Art Search let's you search and discover over one million pieces of historic art.

   OpenAPI Version: 3.0.0
   Art Search API API version: 1.0.0
   Contact: mail@artsearch.io
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : ArtSearch.Model
-}

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveFoldable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-matches -fno-warn-unused-binds -fno-warn-unused-imports #-}

module ArtSearch.Model where

import ArtSearch.Core
import ArtSearch.MimeTypes

import Data.Aeson ((.:),(.:!),(.:?),(.=))

import qualified Control.Arrow as P (left)
import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Base64 as B64
import qualified Data.ByteString.Char8 as BC
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.HashMap.Lazy as HM
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Time as TI
import qualified Lens.Micro as L
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Control.Applicative ((<|>))
import Control.Applicative (Alternative)
import Data.Function ((&))
import Data.Monoid ((<>))
import Data.Text (Text)
import Prelude (($),(/=),(.),(<$>),(<*>),(>>=),(=<<),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)

import qualified Prelude as P



-- * Parameter newtypes


-- ** EarliestEndDate
newtype EarliestEndDate = EarliestEndDate { unEarliestEndDate :: Int } deriving (P.Eq, P.Show)

-- ** EarliestStartDate
newtype EarliestStartDate = EarliestStartDate { unEarliestStartDate :: Int } deriving (P.Eq, P.Show)

-- ** Id
newtype Id = Id { unId :: Int } deriving (P.Eq, P.Show)

-- ** LatestEndDate
newtype LatestEndDate = LatestEndDate { unLatestEndDate :: Int } deriving (P.Eq, P.Show)

-- ** LatestStartDate
newtype LatestStartDate = LatestStartDate { unLatestStartDate :: Int } deriving (P.Eq, P.Show)

-- ** Material
newtype Material = Material { unMaterial :: Text } deriving (P.Eq, P.Show)

-- ** MaxRatio
newtype MaxRatio = MaxRatio { unMaxRatio :: Double } deriving (P.Eq, P.Show)

-- ** MinRatio
newtype MinRatio = MinRatio { unMinRatio :: Double } deriving (P.Eq, P.Show)

-- ** Number
newtype Number = Number { unNumber :: Int } deriving (P.Eq, P.Show)

-- ** Offset
newtype Offset = Offset { unOffset :: Int } deriving (P.Eq, P.Show)

-- ** Origin
newtype Origin = Origin { unOrigin :: Text } deriving (P.Eq, P.Show)

-- ** ParamType
newtype ParamType = ParamType { unParamType :: Text } deriving (P.Eq, P.Show)

-- ** Query
newtype Query = Query { unQuery :: Text } deriving (P.Eq, P.Show)

-- ** Technique
newtype Technique = Technique { unTechnique :: Text } deriving (P.Eq, P.Show)

-- * Models


-- ** RetrieveArtworkById200Response
-- | RetrieveArtworkById200Response
data RetrieveArtworkById200Response = RetrieveArtworkById200Response
  { retrieveArtworkById200ResponseId :: !(Maybe Int) -- ^ "id"
  , retrieveArtworkById200ResponseTitle :: !(Maybe Text) -- ^ "title"
  , retrieveArtworkById200ResponseImage :: !(Maybe Text) -- ^ "image"
  , retrieveArtworkById200ResponseStartDate :: !(Maybe Int) -- ^ "start_date"
  , retrieveArtworkById200ResponseEndDate :: !(Maybe Int) -- ^ "end_date"
  , retrieveArtworkById200ResponseDescription :: !(Maybe Text) -- ^ "description"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON RetrieveArtworkById200Response
instance A.FromJSON RetrieveArtworkById200Response where
  parseJSON = A.withObject "RetrieveArtworkById200Response" $ \o ->
    RetrieveArtworkById200Response
      <$> (o .:? "id")
      <*> (o .:? "title")
      <*> (o .:? "image")
      <*> (o .:? "start_date")
      <*> (o .:? "end_date")
      <*> (o .:? "description")

-- | ToJSON RetrieveArtworkById200Response
instance A.ToJSON RetrieveArtworkById200Response where
  toJSON RetrieveArtworkById200Response {..} =
   _omitNulls
      [ "id" .= retrieveArtworkById200ResponseId
      , "title" .= retrieveArtworkById200ResponseTitle
      , "image" .= retrieveArtworkById200ResponseImage
      , "start_date" .= retrieveArtworkById200ResponseStartDate
      , "end_date" .= retrieveArtworkById200ResponseEndDate
      , "description" .= retrieveArtworkById200ResponseDescription
      ]


-- | Construct a value of type 'RetrieveArtworkById200Response' (by applying it's required fields, if any)
mkRetrieveArtworkById200Response
  :: RetrieveArtworkById200Response
mkRetrieveArtworkById200Response =
  RetrieveArtworkById200Response
  { retrieveArtworkById200ResponseId = Nothing
  , retrieveArtworkById200ResponseTitle = Nothing
  , retrieveArtworkById200ResponseImage = Nothing
  , retrieveArtworkById200ResponseStartDate = Nothing
  , retrieveArtworkById200ResponseEndDate = Nothing
  , retrieveArtworkById200ResponseDescription = Nothing
  }

-- ** SearchArtworks200Response
-- | SearchArtworks200Response
data SearchArtworks200Response = SearchArtworks200Response
  { searchArtworks200ResponseAvailable :: !(Maybe Int) -- ^ "available"
  , searchArtworks200ResponseNumber :: !(Maybe Int) -- ^ "number"
  , searchArtworks200ResponseOffset :: !(Maybe Int) -- ^ "offset"
  , searchArtworks200ResponseArtworks :: !(Maybe [SearchArtworks200ResponseArtworksInner]) -- ^ "artworks"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON SearchArtworks200Response
instance A.FromJSON SearchArtworks200Response where
  parseJSON = A.withObject "SearchArtworks200Response" $ \o ->
    SearchArtworks200Response
      <$> (o .:? "available")
      <*> (o .:? "number")
      <*> (o .:? "offset")
      <*> (o .:? "artworks")

-- | ToJSON SearchArtworks200Response
instance A.ToJSON SearchArtworks200Response where
  toJSON SearchArtworks200Response {..} =
   _omitNulls
      [ "available" .= searchArtworks200ResponseAvailable
      , "number" .= searchArtworks200ResponseNumber
      , "offset" .= searchArtworks200ResponseOffset
      , "artworks" .= searchArtworks200ResponseArtworks
      ]


-- | Construct a value of type 'SearchArtworks200Response' (by applying it's required fields, if any)
mkSearchArtworks200Response
  :: SearchArtworks200Response
mkSearchArtworks200Response =
  SearchArtworks200Response
  { searchArtworks200ResponseAvailable = Nothing
  , searchArtworks200ResponseNumber = Nothing
  , searchArtworks200ResponseOffset = Nothing
  , searchArtworks200ResponseArtworks = Nothing
  }

-- ** SearchArtworks200ResponseArtworksInner
-- | SearchArtworks200ResponseArtworksInner
data SearchArtworks200ResponseArtworksInner = SearchArtworks200ResponseArtworksInner
  { searchArtworks200ResponseArtworksInnerTitle :: !(Maybe Text) -- ^ "title"
  , searchArtworks200ResponseArtworksInnerImage :: !(Maybe Text) -- ^ "image"
  , searchArtworks200ResponseArtworksInnerId :: !(Maybe Int) -- ^ "id"
  } deriving (P.Show, P.Eq, P.Typeable)

-- | FromJSON SearchArtworks200ResponseArtworksInner
instance A.FromJSON SearchArtworks200ResponseArtworksInner where
  parseJSON = A.withObject "SearchArtworks200ResponseArtworksInner" $ \o ->
    SearchArtworks200ResponseArtworksInner
      <$> (o .:? "title")
      <*> (o .:? "image")
      <*> (o .:? "id")

-- | ToJSON SearchArtworks200ResponseArtworksInner
instance A.ToJSON SearchArtworks200ResponseArtworksInner where
  toJSON SearchArtworks200ResponseArtworksInner {..} =
   _omitNulls
      [ "title" .= searchArtworks200ResponseArtworksInnerTitle
      , "image" .= searchArtworks200ResponseArtworksInnerImage
      , "id" .= searchArtworks200ResponseArtworksInnerId
      ]


-- | Construct a value of type 'SearchArtworks200ResponseArtworksInner' (by applying it's required fields, if any)
mkSearchArtworks200ResponseArtworksInner
  :: SearchArtworks200ResponseArtworksInner
mkSearchArtworks200ResponseArtworksInner =
  SearchArtworks200ResponseArtworksInner
  { searchArtworks200ResponseArtworksInnerTitle = Nothing
  , searchArtworks200ResponseArtworksInnerImage = Nothing
  , searchArtworks200ResponseArtworksInnerId = Nothing
  }




-- * Auth Methods

-- ** AuthApiKeyApiKey
data AuthApiKeyApiKey =
  AuthApiKeyApiKey Text -- ^ secret
  deriving (P.Eq, P.Show, P.Typeable)

instance AuthMethod AuthApiKeyApiKey where
  applyAuthMethod _ a@(AuthApiKeyApiKey secret) req =
    P.pure $
    if (P.typeOf a `P.elem` rAuthTypes req)
      then req `setQuery` toQuery ("api-key", Just secret)
           & L.over rAuthTypesL (P.filter (/= P.typeOf a))
      else req

-- ** AuthApiKeyHeaderApiKey
data AuthApiKeyHeaderApiKey =
  AuthApiKeyHeaderApiKey Text -- ^ secret
  deriving (P.Eq, P.Show, P.Typeable)

instance AuthMethod AuthApiKeyHeaderApiKey where
  applyAuthMethod _ a@(AuthApiKeyHeaderApiKey secret) req =
    P.pure $
    if (P.typeOf a `P.elem` rAuthTypes req)
      then req `setHeader` toHeader ("x-api-key", secret)
           & L.over rAuthTypesL (P.filter (/= P.typeOf a))
      else req


