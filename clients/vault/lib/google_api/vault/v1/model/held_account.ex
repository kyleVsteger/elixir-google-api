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

defmodule GoogleApi.Vault.V1.Model.HeldAccount do
  @moduledoc """
  An account being held in a particular hold. This structure is immutable. This can be either a single user or a google group, depending on the corpus. To work with Vault resources, the account must have the [required Vault privileges] (https://support.google.com/vault/answer/2799699) and access to the matter. To access a matter, the account must have created the matter, have the matter shared with them, or have the **View All Matters** privilege.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - The account's ID as provided by the Admin SDK.
  *   `email` (*type:* `String.t`, *default:* `nil`) - The primary email address of the account. If used as an input, this takes precedence over account ID.
  *   `firstName` (*type:* `String.t`, *default:* `nil`) - Output only. The first name of the account holder.
  *   `holdTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. When the account was put on hold.
  *   `lastName` (*type:* `String.t`, *default:* `nil`) - Output only. The last name of the account holder.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :email => String.t() | nil,
          :firstName => String.t() | nil,
          :holdTime => DateTime.t() | nil,
          :lastName => String.t() | nil
        }

  field(:accountId)
  field(:email)
  field(:firstName)
  field(:holdTime, as: DateTime)
  field(:lastName)
end

defimpl Poison.Decoder, for: GoogleApi.Vault.V1.Model.HeldAccount do
  def decode(value, options) do
    GoogleApi.Vault.V1.Model.HeldAccount.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vault.V1.Model.HeldAccount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
