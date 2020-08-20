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

defmodule GoogleApi.Admin.Directory_v1.Model.UserOrganization do
  @moduledoc """
  JSON template for an organization entry.

  ## Attributes

  *   `costCenter` (*type:* `String.t`, *default:* `nil`) - The cost center of the users department.
  *   `customType` (*type:* `String.t`, *default:* `nil`) - Custom type.
  *   `department` (*type:* `String.t`, *default:* `nil`) - Department within the organization.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the organization.
  *   `domain` (*type:* `String.t`, *default:* `nil`) - The domain to which the organization belongs to.
  *   `fullTimeEquivalent` (*type:* `integer()`, *default:* `nil`) - The full-time equivalent millipercent within the organization (100000 = 100%).
  *   `location` (*type:* `String.t`, *default:* `nil`) - Location of the organization. This need not be fully qualified address.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the organization
  *   `primary` (*type:* `boolean()`, *default:* `nil`) - If it user's primary organization.
  *   `symbol` (*type:* `String.t`, *default:* `nil`) - Symbol of the organization.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Title (designation) of the user in the organization.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Each entry can have a type which indicates standard types of that entry. For example organization could be of school work etc. In addition to the standard type an entry can have a custom type and can give it any name. Such types should have the CUSTOM value as type and also have a CustomType value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :costCenter => String.t(),
          :customType => String.t(),
          :department => String.t(),
          :description => String.t(),
          :domain => String.t(),
          :fullTimeEquivalent => integer(),
          :location => String.t(),
          :name => String.t(),
          :primary => boolean(),
          :symbol => String.t(),
          :title => String.t(),
          :type => String.t()
        }

  field(:costCenter)
  field(:customType)
  field(:department)
  field(:description)
  field(:domain)
  field(:fullTimeEquivalent)
  field(:location)
  field(:name)
  field(:primary)
  field(:symbol)
  field(:title)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.UserOrganization do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.UserOrganization.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.UserOrganization do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
