(ns art-search-api.specs.search-artworks-200-response-artworks-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-artworks-200-response-artworks-inner-data
  {
   (ds/opt :title) string?
   (ds/opt :image) string?
   (ds/opt :id) int?
   })

(def search-artworks-200-response-artworks-inner-spec
  (ds/spec
    {:name ::search-artworks-200-response-artworks-inner
     :spec search-artworks-200-response-artworks-inner-data}))
