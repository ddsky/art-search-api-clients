# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule ArtSearchAPI.Model.SearchArtworks200ResponseArtworksInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :title,
    :image,
    :id
  ]

  @type t :: %__MODULE__{
    :title => String.t | nil,
    :image => String.t | nil,
    :id => integer() | nil
  }

  def decode(value) do
    value
  end
end

