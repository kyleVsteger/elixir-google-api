# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Jobs.V2.Model.GetHistogramResponse do
  @moduledoc """
  Deprecated. Use SearchJobsRequest.histogram_facets instead to make
  a single call with both search and histogram.

  Output only.

  The response of the GetHistogram method.

  ## Attributes

  *   `metadata` (*type:* `GoogleApi.Jobs.V2.Model.ResponseMetadata.t`, *default:* `nil`) - Additional information for the API invocation, such as the request
      tracking id.
  *   `results` (*type:* `list(GoogleApi.Jobs.V2.Model.HistogramResult.t)`, *default:* `nil`) - The Histogram results.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :metadata => GoogleApi.Jobs.V2.Model.ResponseMetadata.t(),
          :results => list(GoogleApi.Jobs.V2.Model.HistogramResult.t())
        }

  field(:metadata, as: GoogleApi.Jobs.V2.Model.ResponseMetadata)
  field(:results, as: GoogleApi.Jobs.V2.Model.HistogramResult, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.GetHistogramResponse do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.GetHistogramResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.GetHistogramResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
