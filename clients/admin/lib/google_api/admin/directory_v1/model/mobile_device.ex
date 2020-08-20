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

defmodule GoogleApi.Admin.Directory_v1.Model.MobileDevice do
  @moduledoc """


  ## Attributes

  *   `firstSync` (*type:* `DateTime.t`, *default:* `nil`) - Date and time the device was first synchronized with the policy settings in the G Suite administrator control panel (Read-only)
  *   `hardware` (*type:* `String.t`, *default:* `nil`) - Mobile Device Hardware (Read-only)
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `securityPatchLevel` (*type:* `String.t`, *default:* `nil`) - Mobile Device Security patch level (Read-only)
  *   `defaultLanguage` (*type:* `String.t`, *default:* `nil`) - The default locale used on the Mobile Device (Read-only)
  *   `devicePasswordStatus` (*type:* `String.t`, *default:* `nil`) - DevicePasswordStatus (Read-only)
  *   `userAgent` (*type:* `String.t`, *default:* `nil`) - Mobile Device user agent
  *   `deviceCompromisedStatus` (*type:* `String.t`, *default:* `nil`) - Mobile Device compromised status (Read-only)
  *   `supportsWorkProfile` (*type:* `boolean()`, *default:* `nil`) - Work profile supported on device (Read-only)
  *   `privilege` (*type:* `String.t`, *default:* `nil`) - DMAgentPermission (Read-only)
  *   `managedAccountIsOnOwnerProfile` (*type:* `boolean()`, *default:* `nil`) - Boolean indicating if this account is on owner/primary profile or not (Read-only)
  *   `email` (*type:* `list(String.t)`, *default:* `nil`) - List of owner user's email addresses (Read-only)
  *   `os` (*type:* `String.t`, *default:* `nil`) - Name of the mobile operating system
  *   `releaseVersion` (*type:* `String.t`, *default:* `nil`) - Mobile Device release version version (Read-only)
  *   `encryptionStatus` (*type:* `String.t`, *default:* `nil`) - Mobile Device Encryption Status (Read-only)
  *   `networkOperator` (*type:* `String.t`, *default:* `nil`) - Mobile Device mobile or network operator (if available) (Read-only)
  *   `bootloaderVersion` (*type:* `String.t`, *default:* `nil`) - Mobile Device Bootloader version (Read-only)
  *   `imei` (*type:* `String.t`, *default:* `nil`) - Mobile Device IMEI number (Read-only)
  *   `kind` (*type:* `String.t`, *default:* `admin#directory#mobiledevice`) - Kind of resource this is.
  *   `lastSync` (*type:* `DateTime.t`, *default:* `nil`) - Date and time the device was last synchronized with the policy settings in the G Suite administrator control panel (Read-only)
  *   `unknownSourcesStatus` (*type:* `boolean()`, *default:* `nil`) - Unknown sources enabled or disabled on device (Read-only)
  *   `resourceId` (*type:* `String.t`, *default:* `nil`) - Unique identifier of Mobile Device (Read-only)
  *   `name` (*type:* `list(String.t)`, *default:* `nil`) - List of owner user's names (Read-only)
  *   `deviceId` (*type:* `String.t`, *default:* `nil`) - Mobile Device serial number (Read-only)
  *   `buildNumber` (*type:* `String.t`, *default:* `nil`) - Mobile Device Build number (Read-only)
  *   `status` (*type:* `String.t`, *default:* `nil`) - Status of the device (Read-only)
  *   `manufacturer` (*type:* `String.t`, *default:* `nil`) - Mobile Device manufacturer (Read-only)
  *   `model` (*type:* `String.t`, *default:* `nil`) - Name of the model of the device
  *   `serialNumber` (*type:* `String.t`, *default:* `nil`) - Mobile Device SSN or Serial Number (Read-only)
  *   `meid` (*type:* `String.t`, *default:* `nil`) - Mobile Device MEID number (Read-only)
  *   `developerOptionsStatus` (*type:* `boolean()`, *default:* `nil`) - Developer options enabled or disabled on device (Read-only)
  *   `brand` (*type:* `String.t`, *default:* `nil`) - Mobile Device Brand (Read-only)
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of device (Read-only)
  *   `kernelVersion` (*type:* `String.t`, *default:* `nil`) - Mobile Device Kernel version (Read-only)
  *   `basebandVersion` (*type:* `String.t`, *default:* `nil`) - Mobile Device Baseband version (Read-only)
  *   `hardwareId` (*type:* `String.t`, *default:* `nil`) - Mobile Device Hardware Id (Read-only)
  *   `adbStatus` (*type:* `boolean()`, *default:* `nil`) - Adb (USB debugging) enabled or disabled on device (Read-only)
  *   `wifiMacAddress` (*type:* `String.t`, *default:* `nil`) - Mobile Device WiFi MAC address (Read-only)
  *   `applications` (*type:* `list(GoogleApi.Admin.Directory_v1.Model.MobileDeviceApplications.t)`, *default:* `nil`) - List of applications installed on Mobile Device
  *   `otherAccountsInfo` (*type:* `list(String.t)`, *default:* `nil`) - List of accounts added on device (Read-only)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :firstSync => DateTime.t(),
          :hardware => String.t(),
          :etag => String.t(),
          :securityPatchLevel => String.t(),
          :defaultLanguage => String.t(),
          :devicePasswordStatus => String.t(),
          :userAgent => String.t(),
          :deviceCompromisedStatus => String.t(),
          :supportsWorkProfile => boolean(),
          :privilege => String.t(),
          :managedAccountIsOnOwnerProfile => boolean(),
          :email => list(String.t()),
          :os => String.t(),
          :releaseVersion => String.t(),
          :encryptionStatus => String.t(),
          :networkOperator => String.t(),
          :bootloaderVersion => String.t(),
          :imei => String.t(),
          :kind => String.t(),
          :lastSync => DateTime.t(),
          :unknownSourcesStatus => boolean(),
          :resourceId => String.t(),
          :name => list(String.t()),
          :deviceId => String.t(),
          :buildNumber => String.t(),
          :status => String.t(),
          :manufacturer => String.t(),
          :model => String.t(),
          :serialNumber => String.t(),
          :meid => String.t(),
          :developerOptionsStatus => boolean(),
          :brand => String.t(),
          :type => String.t(),
          :kernelVersion => String.t(),
          :basebandVersion => String.t(),
          :hardwareId => String.t(),
          :adbStatus => boolean(),
          :wifiMacAddress => String.t(),
          :applications => list(GoogleApi.Admin.Directory_v1.Model.MobileDeviceApplications.t()),
          :otherAccountsInfo => list(String.t())
        }

  field(:firstSync, as: DateTime)
  field(:hardware)
  field(:etag)
  field(:securityPatchLevel)
  field(:defaultLanguage)
  field(:devicePasswordStatus)
  field(:userAgent)
  field(:deviceCompromisedStatus)
  field(:supportsWorkProfile)
  field(:privilege)
  field(:managedAccountIsOnOwnerProfile)
  field(:email, type: :list)
  field(:os)
  field(:releaseVersion)
  field(:encryptionStatus)
  field(:networkOperator)
  field(:bootloaderVersion)
  field(:imei)
  field(:kind)
  field(:lastSync, as: DateTime)
  field(:unknownSourcesStatus)
  field(:resourceId)
  field(:name, type: :list)
  field(:deviceId)
  field(:buildNumber)
  field(:status)
  field(:manufacturer)
  field(:model)
  field(:serialNumber)
  field(:meid)
  field(:developerOptionsStatus)
  field(:brand)
  field(:type)
  field(:kernelVersion)
  field(:basebandVersion)
  field(:hardwareId)
  field(:adbStatus)
  field(:wifiMacAddress)

  field(:applications,
    as: GoogleApi.Admin.Directory_v1.Model.MobileDeviceApplications,
    type: :list
  )

  field(:otherAccountsInfo, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.MobileDevice do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.MobileDevice.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.MobileDevice do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
