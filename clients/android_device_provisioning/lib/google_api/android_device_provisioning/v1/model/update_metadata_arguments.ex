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

defmodule GoogleApi.AndroidDeviceProvisioning.V1.Model.UpdateMetadataArguments do
  @moduledoc """
  Identifies metadata updates to one device.

  ## Attributes

  *   `deviceId` (*type:* `String.t`, *default:* `nil`) - Required. Device ID of the device.
  *   `deviceIdentifier` (*type:* `GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceIdentifier.t`, *default:* `nil`) - Required. Device identifier.
  *   `deviceMetadata` (*type:* `GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceMetadata.t`, *default:* `nil`) - Required. The metadata to update.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceId => String.t() | nil,
          :deviceIdentifier =>
            GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceIdentifier.t() | nil,
          :deviceMetadata => GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceMetadata.t() | nil
        }

  field(:deviceId)
  field(:deviceIdentifier, as: GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceIdentifier)
  field(:deviceMetadata, as: GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceMetadata)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.UpdateMetadataArguments do
  def decode(value, options) do
    GoogleApi.AndroidDeviceProvisioning.V1.Model.UpdateMetadataArguments.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.UpdateMetadataArguments do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
