(ns art-search-api.api.art
  (:require [art-search-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [art-search-api.specs.retrieve-artwork-by-id-200-response :refer :all]
            [art-search-api.specs.search-artworks-200-response-artworks-inner :refer :all]
            [art-search-api.specs.search-artworks-200-response :refer :all]
            )
  (:import (java.io File)))


(defn-spec random-artwork-with-http-info any?
  "Random Artwork
  Get one random artwork from our vast collection. The API returns comprehensive details including the title, high-quality image URL, creation date range, and a rich description providing historical and artistic context."
  []
  (call-api "/artworks/random" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec random-artwork retrieve-artwork-by-id-200-response-spec
  "Random Artwork
  Get one random artwork from our vast collection. The API returns comprehensive details including the title, high-quality image URL, creation date range, and a rich description providing historical and artistic context."
  []
  (let [res (:data (random-artwork-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode retrieve-artwork-by-id-200-response-spec res st/string-transformer)
       res)))


(defn-spec retrieve-artwork-by-id-with-http-info any?
  "Retrieve Artwork by Id
  Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork."
  [id int?]
  (check-required-params id)
  (call-api "/artworks/{id}" :get
            {:path-params   {"id" id }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["apiKey" "headerApiKey"]}))

(defn-spec retrieve-artwork-by-id retrieve-artwork-by-id-200-response-spec
  "Retrieve Artwork by Id
  Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork."
  [id int?]
  (let [res (:data (retrieve-artwork-by-id-with-http-info id))]
    (if (:decode-models *api-context*)
       (st/decode retrieve-artwork-by-id-200-response-spec res st/string-transformer)
       res)))


(defn-spec search-artworks-with-http-info any?
  "Search Artworks
  Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria."
  ([] (search-artworks-with-http-info nil))
  ([{:keys [query earliest-start-date latest-start-date earliest-end-date latest-end-date min-ratio max-ratio type material technique origin offset number]} (s/map-of keyword? any?)]
   (call-api "/artworks" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "earliest-start-date" earliest-start-date "latest-start-date" latest-start-date "earliest-end-date" earliest-end-date "latest-end-date" latest-end-date "min-ratio" min-ratio "max-ratio" max-ratio "type" type "material" material "technique" technique "origin" origin "offset" offset "number" number }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKey" "headerApiKey"]})))

(defn-spec search-artworks search-artworks-200-response-spec
  "Search Artworks
  Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria."
  ([] (search-artworks nil))
  ([optional-params any?]
   (let [res (:data (search-artworks-with-http-info optional-params))]
     (if (:decode-models *api-context*)
        (st/decode search-artworks-200-response-spec res st/string-transformer)
        res))))


