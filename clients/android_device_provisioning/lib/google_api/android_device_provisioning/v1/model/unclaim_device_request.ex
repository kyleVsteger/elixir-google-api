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

defmodule GoogleApi.AndroidDeviceProvisioning.V1.Model.UnclaimDeviceRequest do
  @moduledoc """
  Request message to unclaim a device.

  ## Attributes

  *   `deviceId` (*type:* `String.t`, *default:* `nil`) - Required. The device ID returned by `ClaimDevice`.
  *   `deviceIdentifier` (*type:* `GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceIdentifier.t`, *default:* `nil`) - Required. The device identifier you used when you claimed this device.
  *   `sectionType` (*type:* `String.t`, *default:* `nil`) - Required. The section type of the device's provisioning record.
  *   `vacationModeDays` (*type:* `integer()`, *default:* `nil`) - The duration of the vacation unlock starting from when the request is processed. (1 day is treated as 24 hours)
  *   `vacationModeExpireTime` (*type:* `DateTime.t`, *default:* `nil`) - The expiration time of the vacation unlock.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceId => String.t() | nil,
          :deviceIdentifier =>
            GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceIdentifier.t() | nil,
          :sectionType => String.t() | nil,
          :vacationModeDays => integer() | nil,
          :vacationModeExpireTime => DateTime.t() | nil
        }

  field(:deviceId)
  field(:deviceIdentifier, as: GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceIdentifier)
  field(:sectionType)
  field(:vacationModeDays)
  field(:vacationModeExpireTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.UnclaimDeviceRequest do
  def decode(value, options) do
    GoogleApi.AndroidDeviceProvisioning.V1.Model.UnclaimDeviceRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.UnclaimDeviceRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
