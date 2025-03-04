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

defmodule GoogleApi.CloudRun.V1alpha1.Model.EnvVarSource do
  @moduledoc """
  Cloud Run fully managed: not supported Cloud Run on GKE: supported EnvVarSource represents a source for the value of an EnvVar.

  ## Attributes

  *   `configMapKeyRef` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.ConfigMapKeySelector.t`, *default:* `nil`) - Cloud Run fully managed: not supported Cloud Run on GKE: supported Selects a key of a ConfigMap. +optional
  *   `secretKeyRef` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.SecretKeySelector.t`, *default:* `nil`) - Cloud Run fully managed: supported. Selects a key (version) of a secret in Secret Manager. Cloud Run for Anthos: supported. Selects a key of a secret in the pod's namespace. +optional
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configMapKeyRef => GoogleApi.CloudRun.V1alpha1.Model.ConfigMapKeySelector.t() | nil,
          :secretKeyRef => GoogleApi.CloudRun.V1alpha1.Model.SecretKeySelector.t() | nil
        }

  field(:configMapKeyRef, as: GoogleApi.CloudRun.V1alpha1.Model.ConfigMapKeySelector)
  field(:secretKeyRef, as: GoogleApi.CloudRun.V1alpha1.Model.SecretKeySelector)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.EnvVarSource do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.EnvVarSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.EnvVarSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
