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

defmodule GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ProcessRequest do
  @moduledoc """
  Request message for the process document method.

  ## Attributes

  *   `document` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3Document.t`, *default:* `nil`) - The document payload, the [content] and [mime_type] fields must be set.
  *   `inlineDocument` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3Document.t`, *default:* `nil`) - An inline document proto.
  *   `rawDocument` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3RawDocument.t`, *default:* `nil`) - A raw document content (bytes).
  *   `skipHumanReview` (*type:* `boolean()`, *default:* `nil`) - Whether Human Review feature should be skipped for this request. Default to false.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :document =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3Document.t(),
          :inlineDocument =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3Document.t(),
          :rawDocument =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3RawDocument.t(),
          :skipHumanReview => boolean()
        }

  field(:document, as: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3Document)

  field(:inlineDocument,
    as: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3Document
  )

  field(:rawDocument,
    as: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3RawDocument
  )

  field(:skipHumanReview)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ProcessRequest do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ProcessRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3ProcessRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
