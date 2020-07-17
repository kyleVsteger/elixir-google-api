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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1InstanceDeploymentStatus do
  @moduledoc """
  The status of a deployment as reported by a single instance.

  ## Attributes

  *   `deployedRevisions` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision.t)`, *default:* `nil`) - Revisions currently deployed in MPs.
  *   `deployedRoutes` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute.t)`, *default:* `nil`) - The current routes deployed in the ingress routing table. A route which is
      missing will be shown with no destination environment.
  *   `instance` (*type:* `String.t`, *default:* `nil`) - ID of the instance reporting the status.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deployedRevisions =>
            list(
              GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision.t()
            ),
          :deployedRoutes =>
            list(
              GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute.t()
            ),
          :instance => String.t()
        }

  field(:deployedRevisions,
    as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision,
    type: :list
  )

  field(:deployedRoutes,
    as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute,
    type: :list
  )

  field(:instance)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1InstanceDeploymentStatus do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1InstanceDeploymentStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1InstanceDeploymentStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
