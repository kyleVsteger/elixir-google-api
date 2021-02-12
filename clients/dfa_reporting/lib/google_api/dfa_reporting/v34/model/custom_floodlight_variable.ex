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

defmodule GoogleApi.DFAReporting.V34.Model.CustomFloodlightVariable do
  @moduledoc """
  A custom floodlight variable.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#customFloodlightVariable".
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of custom floodlight variable to supply a value for. These map to the "u[1-20]=" in the tags.
  *   `value` (*type:* `String.t`, *default:* `nil`) - The value of the custom floodlight variable. The length of string must not exceed 100 characters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :type => String.t(),
          :value => String.t()
        }

  field(:kind)
  field(:type)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V34.Model.CustomFloodlightVariable do
  def decode(value, options) do
    GoogleApi.DFAReporting.V34.Model.CustomFloodlightVariable.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V34.Model.CustomFloodlightVariable do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
