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

defmodule GoogleApi.AnalyticsReporting.V4.Model.ReportRequest do
  @moduledoc """
  The main request class which specifies the Reporting API request.

  ## Attributes

  *   `cohortGroup` (*type:* `GoogleApi.AnalyticsReporting.V4.Model.CohortGroup.t`, *default:* `nil`) - Cohort group associated with this request. If there is a cohort group in the request the `ga:cohort` dimension must be present. Every [ReportRequest](#ReportRequest) within a `batchGet` method must contain the same `cohortGroup` definition.
  *   `dateRanges` (*type:* `list(GoogleApi.AnalyticsReporting.V4.Model.DateRange.t)`, *default:* `nil`) - Date ranges in the request. The request can have a maximum of 2 date ranges. The response will contain a set of metric values for each combination of the dimensions for each date range in the request. So, if there are two date ranges, there will be two set of metric values, one for the original date range and one for the second date range. The `reportRequest.dateRanges` field should not be specified for cohorts or Lifetime value requests. If a date range is not provided, the default date range is (startDate: current date - 7 days, endDate: current date - 1 day). Every [ReportRequest](#ReportRequest) within a `batchGet` method must contain the same `dateRanges` definition.
  *   `dimensionFilterClauses` (*type:* `list(GoogleApi.AnalyticsReporting.V4.Model.DimensionFilterClause.t)`, *default:* `nil`) - The dimension filter clauses for filtering Dimension Values. They are logically combined with the `AND` operator. Note that filtering occurs before any dimensions are aggregated, so that the returned metrics represent the total for only the relevant dimensions.
  *   `dimensions` (*type:* `list(GoogleApi.AnalyticsReporting.V4.Model.Dimension.t)`, *default:* `nil`) - The dimensions requested. Requests can have a total of 9 dimensions.
  *   `filtersExpression` (*type:* `String.t`, *default:* `nil`) - Dimension or metric filters that restrict the data returned for your request. To use the `filtersExpression`, supply a dimension or metric on which to filter, followed by the filter expression. For example, the following expression selects `ga:browser` dimension which starts with Firefox; `ga:browser=~^Firefox`. For more information on dimensions and metric filters, see [Filters reference](https://developers.google.com/analytics/devguides/reporting/core/v3/reference#filters).
  *   `hideTotals` (*type:* `boolean()`, *default:* `nil`) - If set to true, hides the total of all metrics for all the matching rows, for every date range. The default false and will return the totals.
  *   `hideValueRanges` (*type:* `boolean()`, *default:* `nil`) - If set to true, hides the minimum and maximum across all matching rows. The default is false and the value ranges are returned.
  *   `includeEmptyRows` (*type:* `boolean()`, *default:* `nil`) - If set to false, the response does not include rows if all the retrieved metrics are equal to zero. The default is false which will exclude these rows.
  *   `metricFilterClauses` (*type:* `list(GoogleApi.AnalyticsReporting.V4.Model.MetricFilterClause.t)`, *default:* `nil`) - The metric filter clauses. They are logically combined with the `AND` operator. Metric filters look at only the first date range and not the comparing date range. Note that filtering on metrics occurs after the metrics are aggregated.
  *   `metrics` (*type:* `list(GoogleApi.AnalyticsReporting.V4.Model.Metric.t)`, *default:* `nil`) - The metrics requested. Requests must specify at least one metric. Requests can have a total of 10 metrics.
  *   `orderBys` (*type:* `list(GoogleApi.AnalyticsReporting.V4.Model.OrderBy.t)`, *default:* `nil`) - Sort order on output rows. To compare two rows, the elements of the following are applied in order until a difference is found. All date ranges in the output get the same row order.
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - Page size is for paging and specifies the maximum number of returned rows. Page size should be >= 0. A query returns the default of 1,000 rows. The Analytics Core Reporting API returns a maximum of 100,000 rows per request, no matter how many you ask for. It can also return fewer rows than requested, if there aren't as many dimension segments as you expect. For instance, there are fewer than 300 possible values for `ga:country`, so when segmenting only by country, you can't get more than 300 rows, even if you set `pageSize` to a higher value.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - A continuation token to get the next page of the results. Adding this to the request will return the rows after the pageToken. The pageToken should be the value returned in the nextPageToken parameter in the response to the GetReports request.
  *   `pivots` (*type:* `list(GoogleApi.AnalyticsReporting.V4.Model.Pivot.t)`, *default:* `nil`) - The pivot definitions. Requests can have a maximum of 2 pivots.
  *   `samplingLevel` (*type:* `String.t`, *default:* `nil`) - The desired report [sample](https://support.google.com/analytics/answer/2637192) size. If the the `samplingLevel` field is unspecified the `DEFAULT` sampling level is used. Every [ReportRequest](#ReportRequest) within a `batchGet` method must contain the same `samplingLevel` definition. See [developer guide](/analytics/devguides/reporting/core/v4/basics#sampling) for details.
  *   `segments` (*type:* `list(GoogleApi.AnalyticsReporting.V4.Model.Segment.t)`, *default:* `nil`) - Segment the data returned for the request. A segment definition helps look at a subset of the segment request. A request can contain up to four segments. Every [ReportRequest](#ReportRequest) within a `batchGet` method must contain the same `segments` definition. Requests with segments must have the `ga:segment` dimension.
  *   `viewId` (*type:* `String.t`, *default:* `nil`) - The Analytics [view ID](https://support.google.com/analytics/answer/1009618) from which to retrieve data. Every [ReportRequest](#ReportRequest) within a `batchGet` method must contain the same `viewId`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cohortGroup => GoogleApi.AnalyticsReporting.V4.Model.CohortGroup.t(),
          :dateRanges => list(GoogleApi.AnalyticsReporting.V4.Model.DateRange.t()),
          :dimensionFilterClauses =>
            list(GoogleApi.AnalyticsReporting.V4.Model.DimensionFilterClause.t()),
          :dimensions => list(GoogleApi.AnalyticsReporting.V4.Model.Dimension.t()),
          :filtersExpression => String.t(),
          :hideTotals => boolean(),
          :hideValueRanges => boolean(),
          :includeEmptyRows => boolean(),
          :metricFilterClauses =>
            list(GoogleApi.AnalyticsReporting.V4.Model.MetricFilterClause.t()),
          :metrics => list(GoogleApi.AnalyticsReporting.V4.Model.Metric.t()),
          :orderBys => list(GoogleApi.AnalyticsReporting.V4.Model.OrderBy.t()),
          :pageSize => integer(),
          :pageToken => String.t(),
          :pivots => list(GoogleApi.AnalyticsReporting.V4.Model.Pivot.t()),
          :samplingLevel => String.t(),
          :segments => list(GoogleApi.AnalyticsReporting.V4.Model.Segment.t()),
          :viewId => String.t()
        }

  field(:cohortGroup, as: GoogleApi.AnalyticsReporting.V4.Model.CohortGroup)
  field(:dateRanges, as: GoogleApi.AnalyticsReporting.V4.Model.DateRange, type: :list)

  field(:dimensionFilterClauses,
    as: GoogleApi.AnalyticsReporting.V4.Model.DimensionFilterClause,
    type: :list
  )

  field(:dimensions, as: GoogleApi.AnalyticsReporting.V4.Model.Dimension, type: :list)
  field(:filtersExpression)
  field(:hideTotals)
  field(:hideValueRanges)
  field(:includeEmptyRows)

  field(:metricFilterClauses,
    as: GoogleApi.AnalyticsReporting.V4.Model.MetricFilterClause,
    type: :list
  )

  field(:metrics, as: GoogleApi.AnalyticsReporting.V4.Model.Metric, type: :list)
  field(:orderBys, as: GoogleApi.AnalyticsReporting.V4.Model.OrderBy, type: :list)
  field(:pageSize)
  field(:pageToken)
  field(:pivots, as: GoogleApi.AnalyticsReporting.V4.Model.Pivot, type: :list)
  field(:samplingLevel)
  field(:segments, as: GoogleApi.AnalyticsReporting.V4.Model.Segment, type: :list)
  field(:viewId)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.ReportRequest do
  def decode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Model.ReportRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.ReportRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
