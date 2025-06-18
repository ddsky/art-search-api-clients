-module(artsearch_search_artworks_200_response_artworks_inner).

-export([encode/1]).

-export_type([artsearch_search_artworks_200_response_artworks_inner/0]).

-type artsearch_search_artworks_200_response_artworks_inner() ::
    #{ 'title' => binary(),
       'image' => binary(),
       'id' => integer()
     }.

encode(#{ 'title' := Title,
          'image' := Image,
          'id' := Id
        }) ->
    #{ 'title' => Title,
       'image' => Image,
       'id' => Id
     }.
