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

defmodule GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_TimestampedObject do
  @moduledoc """
  For tracking related features.
  An object at time_offset with attributes, and located with
  normalized_bounding_box.

  ## Attributes

  *   `attributes` (*type:* `list(GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute.t)`, *default:* `nil`) - Optional. The attributes of the object in the bounding box.
  *   `landmarks` (*type:* `list(GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark.t)`, *default:* `nil`) - Optional. The detected landmarks.
  *   `normalizedBoundingBox` (*type:* `GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox.t`, *default:* `nil`) - Normalized Bounding box in a frame, where the object is located.
  *   `timeOffset` (*type:* `String.t`, *default:* `nil`) - Time-offset, relative to the beginning of the video,
      corresponding to the video frame for this object.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributes =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute.t()
            ),
          :landmarks =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark.t()
            ),
          :normalizedBoundingBox =>
            GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox.t(),
          :timeOffset => String.t()
        }

  field(:attributes,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute,
    type: :list
  )

  field(:landmarks,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark,
    type: :list
  )

  field(:normalizedBoundingBox,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox
  )

  field(:timeOffset)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_TimestampedObject do
  def decode(value, options) do
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_TimestampedObject.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p1beta1_TimestampedObject do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
