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

defmodule GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation do
  @moduledoc """
  Annotation corresponding to one detected, tracked and recognized logo class.

  ## Attributes

  *   `entity` (*type:* `GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_Entity.t`, *default:* `nil`) - Entity category information to specify the logo class that all the logo
      tracks within this LogoRecognitionAnnotation are recognized as.
  *   `segments` (*type:* `list(GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_VideoSegment.t)`, *default:* `nil`) - All video segments where the recognized logo appears. There might be
      multiple instances of the same logo class appearing in one VideoSegment.
  *   `tracks` (*type:* `list(GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_Track.t)`, *default:* `nil`) - All logo tracks where the recognized logo appears. Each track corresponds
      to one logo instance appearing in consecutive frames.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entity =>
            GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_Entity.t(),
          :segments =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_VideoSegment.t()
            ),
          :tracks =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_Track.t()
            )
        }

  field(:entity,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_Entity
  )

  field(:segments,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_VideoSegment,
    type: :list
  )

  field(:tracks,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_Track,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation do
  def decode(value, options) do
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
