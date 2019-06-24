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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.CreativeDealIds do
  @moduledoc """
  The external deal ids associated with a creative.

  ## Attributes

  *   `dealStatuses` (*type:* `list(GoogleApi.AdExchangeBuyer.V14.Model.CreativeDealIdsDealStatuses.t)`, *default:* `nil`) - A list of external deal ids and ARC approval status.
  *   `kind` (*type:* `String.t`, *default:* `adexchangebuyer#creativeDealIds`) - Resource type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dealStatuses =>
            list(GoogleApi.AdExchangeBuyer.V14.Model.CreativeDealIdsDealStatuses.t()),
          :kind => String.t()
        }

  field(
    :dealStatuses,
    as: GoogleApi.AdExchangeBuyer.V14.Model.CreativeDealIdsDealStatuses,
    type: :list
  )

  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.CreativeDealIds do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.CreativeDealIds.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.CreativeDealIds do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
