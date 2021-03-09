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

defmodule GoogleApi.LocalServices.V1.Model.GoogleAdsHomeservicesLocalservicesV1AccountReport do
  @moduledoc """
  An Account Report of a GLS account identified by their account id containing aggregate data gathered from a particular date range.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Unique identifier of the GLS account.
  *   `aggregatorInfo` (*type:* `GoogleApi.LocalServices.V1.Model.GoogleAdsHomeservicesLocalservicesV1AggregatorInfo.t`, *default:* `nil`) - Aggregator specific information related to the account.
  *   `averageFiveStarRating` (*type:* `float()`, *default:* `nil`) - Average review rating score from 1-5 stars.
  *   `averageWeeklyBudget` (*type:* `float()`, *default:* `nil`) - Average weekly budget in the currency code of the account.
  *   `businessName` (*type:* `String.t`, *default:* `nil`) - Business name of the account.
  *   `currencyCode` (*type:* `String.t`, *default:* `nil`) - Currency code of the account.
  *   `currentPeriodChargedLeads` (*type:* `String.t`, *default:* `nil`) - Number of charged leads the account received in current specified period.
  *   `currentPeriodConnectedPhoneCalls` (*type:* `String.t`, *default:* `nil`) - Number of connected phone calls (duration over 30s) in current specified period.
  *   `currentPeriodPhoneCalls` (*type:* `String.t`, *default:* `nil`) - Number of phone calls in current specified period, including both connected and unconnected calls.
  *   `currentPeriodTotalCost` (*type:* `float()`, *default:* `nil`) - Total cost of the account in current specified period in the account's specified currency.
  *   `phoneLeadResponsiveness` (*type:* `float()`, *default:* `nil`) - Phone lead responsiveness of the account for the past 90 days from current date. This is computed by taking the total number of connected calls from charged phone leads and dividing by the total number of calls received.
  *   `previousPeriodChargedLeads` (*type:* `String.t`, *default:* `nil`) - Number of charged leads the account received in previous specified period.
  *   `previousPeriodConnectedPhoneCalls` (*type:* `String.t`, *default:* `nil`) - Number of connected phone calls (duration over 30s) in previous specified period.
  *   `previousPeriodPhoneCalls` (*type:* `String.t`, *default:* `nil`) - Number of phone calls in previous specified period, including both connected and unconnected calls.
  *   `previousPeriodTotalCost` (*type:* `float()`, *default:* `nil`) - Total cost of the account in previous specified period in the account's specified currency.
  *   `totalReview` (*type:* `integer()`, *default:* `nil`) - Total number of reviews the account has up to current date.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :aggregatorInfo =>
            GoogleApi.LocalServices.V1.Model.GoogleAdsHomeservicesLocalservicesV1AggregatorInfo.t()
            | nil,
          :averageFiveStarRating => float() | nil,
          :averageWeeklyBudget => float() | nil,
          :businessName => String.t() | nil,
          :currencyCode => String.t() | nil,
          :currentPeriodChargedLeads => String.t() | nil,
          :currentPeriodConnectedPhoneCalls => String.t() | nil,
          :currentPeriodPhoneCalls => String.t() | nil,
          :currentPeriodTotalCost => float() | nil,
          :phoneLeadResponsiveness => float() | nil,
          :previousPeriodChargedLeads => String.t() | nil,
          :previousPeriodConnectedPhoneCalls => String.t() | nil,
          :previousPeriodPhoneCalls => String.t() | nil,
          :previousPeriodTotalCost => float() | nil,
          :totalReview => integer() | nil
        }

  field(:accountId)

  field(:aggregatorInfo,
    as: GoogleApi.LocalServices.V1.Model.GoogleAdsHomeservicesLocalservicesV1AggregatorInfo
  )

  field(:averageFiveStarRating)
  field(:averageWeeklyBudget)
  field(:businessName)
  field(:currencyCode)
  field(:currentPeriodChargedLeads)
  field(:currentPeriodConnectedPhoneCalls)
  field(:currentPeriodPhoneCalls)
  field(:currentPeriodTotalCost)
  field(:phoneLeadResponsiveness)
  field(:previousPeriodChargedLeads)
  field(:previousPeriodConnectedPhoneCalls)
  field(:previousPeriodPhoneCalls)
  field(:previousPeriodTotalCost)
  field(:totalReview)
end

defimpl Poison.Decoder,
  for: GoogleApi.LocalServices.V1.Model.GoogleAdsHomeservicesLocalservicesV1AccountReport do
  def decode(value, options) do
    GoogleApi.LocalServices.V1.Model.GoogleAdsHomeservicesLocalservicesV1AccountReport.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.LocalServices.V1.Model.GoogleAdsHomeservicesLocalservicesV1AccountReport do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
