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

defmodule GoogleApi.Admin.Directory_v1.Model.UserRelation do
  @moduledoc """
  JSON template for a relation entry.

  ## Attributes

  *   `customType` (*type:* `String.t`, *default:* `nil`) - Custom Type.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The relation of the user. Some of the possible values are mother father sister brother manager assistant partner.
  *   `value` (*type:* `String.t`, *default:* `nil`) - The name of the relation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customType => String.t(),
          :type => String.t(),
          :value => String.t()
        }

  field(:customType)
  field(:type)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.UserRelation do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.UserRelation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.UserRelation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
