# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Jobs.V2.Model.CompanyInfoSource do
  @moduledoc """
  A resource that represents an external  Google identifier for a company,
  for example, a Google+ business page or a Google Maps business page.
  For unsupported types, use `unknown_type_id`.

  ## Attributes

  *   `freebaseMid` (*type:* `String.t`, *default:* `nil`) - Optional.

      The Google's Knowledge Graph value for the employer's company.
  *   `gplusId` (*type:* `String.t`, *default:* `nil`) - Optional.

      The numeric identifier for the employer's Google+ business page.
  *   `mapsCid` (*type:* `String.t`, *default:* `nil`) - Optional.

      The numeric identifier for the employer's headquarters on Google Maps,
      namely, the Google Maps CID (cell id).
  *   `unknownTypeId` (*type:* `String.t`, *default:* `nil`) - Optional.

      A Google identifier that does not match any of the other types.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :freebaseMid => String.t(),
          :gplusId => String.t(),
          :mapsCid => String.t(),
          :unknownTypeId => String.t()
        }

  field(:freebaseMid)
  field(:gplusId)
  field(:mapsCid)
  field(:unknownTypeId)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.CompanyInfoSource do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.CompanyInfoSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.CompanyInfoSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
