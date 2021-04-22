# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.CloudSearch.V1.Model.ItemMetadata do
  @moduledoc """
  Available metadata fields for the item.

  ## Attributes

  *   `containerName` (*type:* `String.t`, *default:* `nil`) - The name of the container for this item. Deletion of the container item leads to automatic deletion of this item. Note: ACLs are not inherited from a container item. To provide ACL inheritance for an item, use the inheritAclFrom field. The maximum length is 1536 characters.
  *   `contentLanguage` (*type:* `String.t`, *default:* `nil`) - The BCP-47 language code for the item, such as "en-US" or "sr-Latn". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier. The maximum length is 32 characters.
  *   `contextAttributes` (*type:* `list(GoogleApi.CloudSearch.V1.Model.ContextAttribute.t)`, *default:* `nil`) - A set of named attributes associated with the item. This can be used for influencing the ranking of the item based on the context in the request. The maximum number of elements is 10.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when the item was created in the source repository.
  *   `hash` (*type:* `String.t`, *default:* `nil`) - Hashing value provided by the API caller. This can be used with the items.push method to calculate modified state. The maximum length is 2048 characters.
  *   `interactions` (*type:* `list(GoogleApi.CloudSearch.V1.Model.Interaction.t)`, *default:* `nil`) - A list of interactions for the item. Interactions are used to improve Search quality, but are not exposed to end users. The maximum number of elements is 1000.
  *   `keywords` (*type:* `list(String.t)`, *default:* `nil`) - Additional keywords or phrases that should match the item. Used internally for user generated content. The maximum number of elements is 100. The maximum length is 8192 characters.
  *   `mimeType` (*type:* `String.t`, *default:* `nil`) - The original mime-type of ItemContent.content in the source repository. The maximum length is 256 characters.
  *   `objectType` (*type:* `String.t`, *default:* `nil`) - The type of the item. This should correspond to the name of an object definition in the schema registered for the data source. For example, if the schema for the data source contains an object definition with name 'document', then item indexing requests for objects of that type should set objectType to 'document'. The maximum length is 256 characters.
  *   `searchQualityMetadata` (*type:* `GoogleApi.CloudSearch.V1.Model.SearchQualityMetadata.t`, *default:* `nil`) - Additional search quality metadata of the item
  *   `sourceRepositoryUrl` (*type:* `String.t`, *default:* `nil`) - Link to the source repository serving the data. Search results apply this link to the title. Whitespace or special characters may cause Cloud Search result links to trigger a redirect notice; to avoid this, encode the URL. The maximum length is 2048 characters.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of the item. If given, this will be the displayed title of the Search result. The maximum length is 2048 characters.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when the item was last modified in the source repository.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :containerName => String.t() | nil,
          :contentLanguage => String.t() | nil,
          :contextAttributes => list(GoogleApi.CloudSearch.V1.Model.ContextAttribute.t()) | nil,
          :createTime => DateTime.t() | nil,
          :hash => String.t() | nil,
          :interactions => list(GoogleApi.CloudSearch.V1.Model.Interaction.t()) | nil,
          :keywords => list(String.t()) | nil,
          :mimeType => String.t() | nil,
          :objectType => String.t() | nil,
          :searchQualityMetadata =>
            GoogleApi.CloudSearch.V1.Model.SearchQualityMetadata.t() | nil,
          :sourceRepositoryUrl => String.t() | nil,
          :title => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:containerName)
  field(:contentLanguage)
  field(:contextAttributes, as: GoogleApi.CloudSearch.V1.Model.ContextAttribute, type: :list)
  field(:createTime, as: DateTime)
  field(:hash)
  field(:interactions, as: GoogleApi.CloudSearch.V1.Model.Interaction, type: :list)
  field(:keywords, type: :list)
  field(:mimeType)
  field(:objectType)
  field(:searchQualityMetadata, as: GoogleApi.CloudSearch.V1.Model.SearchQualityMetadata)
  field(:sourceRepositoryUrl)
  field(:title)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.ItemMetadata do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.ItemMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.ItemMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
