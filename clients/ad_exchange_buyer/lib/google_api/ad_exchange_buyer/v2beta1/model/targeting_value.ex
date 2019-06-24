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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.TargetingValue do
  @moduledoc """
  A polymorphic targeting value used as part of Shared Targeting.

  ## Attributes

  *   `creativeSizeValue` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.CreativeSize.t`, *default:* `nil`) - The creative size value to include/exclude.
      Filled in when key = GOOG_CREATIVE_SIZE
  *   `dayPartTargetingValue` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.DayPartTargeting.t`, *default:* `nil`) - The daypart targeting to include / exclude.
      Filled in when the key is GOOG_DAYPART_TARGETING.
      The definition of this targeting is derived from the structure
      used by Ad Manager.
  *   `longValue` (*type:* `String.t`, *default:* `nil`) - The long value to include/exclude.
  *   `stringValue` (*type:* `String.t`, *default:* `nil`) - The string value to include/exclude.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creativeSizeValue => GoogleApi.AdExchangeBuyer.V2beta1.Model.CreativeSize.t(),
          :dayPartTargetingValue => GoogleApi.AdExchangeBuyer.V2beta1.Model.DayPartTargeting.t(),
          :longValue => String.t(),
          :stringValue => String.t()
        }

  field(:creativeSizeValue, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.CreativeSize)
  field(:dayPartTargetingValue, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.DayPartTargeting)
  field(:longValue)
  field(:stringValue)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.TargetingValue do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.TargetingValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.TargetingValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
