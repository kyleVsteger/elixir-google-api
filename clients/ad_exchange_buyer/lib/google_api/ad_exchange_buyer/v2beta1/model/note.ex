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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.Note do
  @moduledoc """
  A proposal may be associated to several notes.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp for when this note was created.
  *   `creatorRole` (*type:* `String.t`, *default:* `nil`) - Output only. The role of the person (buyer/seller) creating the note.
  *   `note` (*type:* `String.t`, *default:* `nil`) - The actual note to attach.
      (max-length: 1024 unicode code units)

      Note: This field may be set only when creating the resource. Modifying
      this field while updating the resource will result in an error.
  *   `noteId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique ID for the note.
  *   `proposalRevision` (*type:* `String.t`, *default:* `nil`) - Output only. The revision number of the proposal when the note is created.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :creatorRole => String.t(),
          :note => String.t(),
          :noteId => String.t(),
          :proposalRevision => String.t()
        }

  field(:createTime, as: DateTime)
  field(:creatorRole)
  field(:note)
  field(:noteId)
  field(:proposalRevision)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.Note do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.Note.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.Note do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
