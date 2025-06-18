-module(artsearch_art_api).

-export([random_artwork/1, random_artwork/2,
         retrieve_artwork_by_id/2, retrieve_artwork_by_id/3,
         search_artworks/1, search_artworks/2]).

-define(BASE_URL, <<"">>).

%% @doc Random Artwork
%% Get one random artwork from our vast collection. The API returns comprehensive details including the title, high-quality image URL, creation date range, and a rich description providing historical and artistic context.
-spec random_artwork(ctx:ctx()) -> {ok, artsearch_retrieve_artwork_by_id_200_response:artsearch_retrieve_artwork_by_id_200_response(), artsearch_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), artsearch_utils:response_info()}.
random_artwork(Ctx) ->
    random_artwork(Ctx, #{}).

-spec random_artwork(ctx:ctx(), maps:map()) -> {ok, artsearch_retrieve_artwork_by_id_200_response:artsearch_retrieve_artwork_by_id_200_response(), artsearch_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), artsearch_utils:response_info()}.
random_artwork(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(artsearch_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/artworks/random"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = artsearch_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    artsearch_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Retrieve Artwork by Id
%% Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.
-spec retrieve_artwork_by_id(ctx:ctx(), integer()) -> {ok, artsearch_retrieve_artwork_by_id_200_response:artsearch_retrieve_artwork_by_id_200_response(), artsearch_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), artsearch_utils:response_info()}.
retrieve_artwork_by_id(Ctx, Id) ->
    retrieve_artwork_by_id(Ctx, Id, #{}).

-spec retrieve_artwork_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, artsearch_retrieve_artwork_by_id_200_response:artsearch_retrieve_artwork_by_id_200_response(), artsearch_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), artsearch_utils:response_info()}.
retrieve_artwork_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(artsearch_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/artworks/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = artsearch_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    artsearch_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Artworks
%% Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.
-spec search_artworks(ctx:ctx()) -> {ok, artsearch_search_artworks_200_response:artsearch_search_artworks_200_response(), artsearch_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), artsearch_utils:response_info()}.
search_artworks(Ctx) ->
    search_artworks(Ctx, #{}).

-spec search_artworks(ctx:ctx(), maps:map()) -> {ok, artsearch_search_artworks_200_response:artsearch_search_artworks_200_response(), artsearch_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), artsearch_utils:response_info()}.
search_artworks(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(artsearch_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/artworks"],
    QS = lists:flatten([])++artsearch_utils:optional_params(['query', 'earliest-start-date', 'latest-start-date', 'earliest-end-date', 'latest-end-date', 'min-ratio', 'max-ratio', 'type', 'material', 'technique', 'origin', 'offset', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = artsearch_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    artsearch_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


