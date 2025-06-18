# ArtSearchAPI

Art Search let&#39;s you search and discover over one million pieces of historic art.

## Building

To install the required dependencies and to build the elixir project, run:

```console
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex][], the package can be installed by adding `artsearch` to
your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:artsearch, "~> 1.0.0"}]
end
```

Documentation can be generated with [ExDoc][] and published on [HexDocs][]. Once published, the docs can be found at
[https://hexdocs.pm/artsearch][docs].

## Configuration

You can override the URL of your server (e.g. if you have a separate development and production server in your
configuration files).

```elixir
config :artsearch, base_url: "https://api.artsearch.io"
```

Multiple clients for the same API with different URLs can be created passing different `base_url`s when calling
`ArtSearchAPI.Connection.new/1`:

```elixir
client = ArtSearchAPI.Connection.new(base_url: "https://api.artsearch.io")
```

[exdoc]: https://github.com/elixir-lang/ex_doc
[hexdocs]: https://hexdocs.pm
[available in hex]: https://hex.pm/docs/publish
[docs]: https://hexdocs.pm/artsearch
