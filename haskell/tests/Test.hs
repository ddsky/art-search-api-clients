{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE PartialTypeSignatures #-}

module Main where

import Data.Typeable (Proxy(..))
import Test.Hspec
import Test.Hspec.QuickCheck

import PropMime
import Instances ()

import ArtSearch.Model
import ArtSearch.MimeTypes

main :: IO ()
main =
  hspec $ modifyMaxSize (const 10) $ do
    describe "JSON instances" $ do
      pure ()
      propMimeEq MimeJSON (Proxy :: Proxy RetrieveArtworkById200Response)
      propMimeEq MimeJSON (Proxy :: Proxy SearchArtworks200Response)
      propMimeEq MimeJSON (Proxy :: Proxy SearchArtworks200ResponseArtworksInner)
      
