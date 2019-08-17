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

defmodule GoogleApi.AnalyticsReporting.V4.Model.MetricFilterClause do
  @moduledoc """
  Represents a group of metric filters.
  Set the operator value to specify how the filters are logically combined.

  ## Attributes

  *   `filters` (*type:* `list(GoogleApi.AnalyticsReporting.V4.Model.MetricFilter.t)`, *default:* `nil`) - The repeated set of filters. They are logically combined based on the
      operator specified.
  *   `operator` (*type:* `String.t`, *default:* `nil`) - The operator for combining multiple metric filters. If unspecified, it is
      treated as an `OR`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filters => list(GoogleApi.AnalyticsReporting.V4.Model.MetricFilter.t()),
          :operator => String.t()
        }

  field(:filters, as: GoogleApi.AnalyticsReporting.V4.Model.MetricFilter, type: :list)
  field(:operator)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.MetricFilterClause do
  def decode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Model.MetricFilterClause.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.MetricFilterClause do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
