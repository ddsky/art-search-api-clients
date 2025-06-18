-module(artsearch_search_artworks_200_response).

-export([encode/1]).

-export_type([artsearch_search_artworks_200_response/0]).

-type artsearch_search_artworks_200_response() ::
    #{ 'available' => integer(),
       'number' => integer(),
       'offset' => integer(),
       'artworks' => list()
     }.

encode(#{ 'available' := Available,
          'number' := Number,
          'offset' := Offset,
          'artworks' := Artworks
        }) ->
    #{ 'available' => Available,
       'number' => Number,
       'offset' => Offset,
       'artworks' => Artworks
     }.
