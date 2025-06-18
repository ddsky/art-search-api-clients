(ns art-search-api.specs.search-artworks-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [art-search-api.specs.search-artworks-200-response-artworks-inner :refer :all]
            )
  (:import (java.io File)))


(def search-artworks-200-response-data
  {
   (ds/opt :available) int?
   (ds/opt :number) int?
   (ds/opt :offset) int?
   (ds/opt :artworks) (s/coll-of search-artworks-200-response-artworks-inner-spec)
   })

(def search-artworks-200-response-spec
  (ds/spec
    {:name ::search-artworks-200-response
     :spec search-artworks-200-response-data}))
