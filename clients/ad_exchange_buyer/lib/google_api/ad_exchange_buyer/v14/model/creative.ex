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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.Creative do
  @moduledoc """
  A creative and its classification data.

  ## Attributes

  *   `HTMLSnippet` (*type:* `String.t`, *default:* `nil`) - The HTML snippet that displays the ad when inserted in the web page. If set, videoURL, videoVastXML, and nativeAd should not be set.
  *   `accountId` (*type:* `integer()`, *default:* `nil`) - Account id.
  *   `adChoicesDestinationUrl` (*type:* `String.t`, *default:* `nil`) - The link to the Ad Preferences page. This is only supported for native ads.
  *   `adTechnologyProviders` (*type:* `GoogleApi.AdExchangeBuyer.V14.Model.CreativeAdTechnologyProviders.t`, *default:* `nil`) - 
  *   `advertiserId` (*type:* `list(String.t)`, *default:* `nil`) - Detected advertiser id, if any. Read-only. This field should not be set in requests.
  *   `advertiserName` (*type:* `String.t`, *default:* `nil`) - The name of the company being advertised in the creative. The value provided must exist in the advertisers.txt file.
  *   `agencyId` (*type:* `String.t`, *default:* `nil`) - The agency id for this creative.
  *   `apiUploadTimestamp` (*type:* `DateTime.t`, *default:* `nil`) - The last upload timestamp of this creative if it was uploaded via API. Read-only. The value of this field is generated, and will be ignored for uploads. (formatted RFC 3339 timestamp).
  *   `attribute` (*type:* `list(integer())`, *default:* `nil`) - List of buyer selectable attributes for the ads that may be shown from this snippet. Each attribute is represented by an integer as defined in  buyer-declarable-creative-attributes.txt.
  *   `buyerCreativeId` (*type:* `String.t`, *default:* `nil`) - A buyer-specific id identifying the creative in this ad.
  *   `clickThroughUrl` (*type:* `list(String.t)`, *default:* `nil`) - The set of destination urls for the snippet.
  *   `corrections` (*type:* `list(GoogleApi.AdExchangeBuyer.V14.Model.CreativeCorrections.t)`, *default:* `nil`) - Shows any corrections that were applied to this creative. Read-only. This field should not be set in requests.
  *   `creativeStatusIdentityType` (*type:* `String.t`, *default:* `nil`) - Creative status identity type that the creative item applies to. Ad Exchange real-time bidding is migrating to the sizeless creative verification. Originally, Ad Exchange assigned creative verification status to a unique combination of a buyer creative ID and creative dimensions. Post-migration, a single verification status will be assigned at the buyer creative ID level. This field allows to distinguish whether a given creative status applies to a unique combination of a buyer creative ID and creative dimensions, or to a buyer creative ID as a whole.
  *   `dealsStatus` (*type:* `String.t`, *default:* `nil`) - Top-level deals status. Read-only. This field should not be set in requests. If disapproved, an entry for auctionType=DIRECT_DEALS (or ALL) in servingRestrictions will also exist. Note that this may be nuanced with other contextual restrictions, in which case it may be preferable to read from servingRestrictions directly.
  *   `detectedDomains` (*type:* `list(String.t)`, *default:* `nil`) - Detected domains for this creative. Read-only. This field should not be set in requests.
  *   `filteringReasons` (*type:* `GoogleApi.AdExchangeBuyer.V14.Model.CreativeFilteringReasons.t`, *default:* `nil`) - The filtering reasons for the creative. Read-only. This field should not be set in requests.
  *   `height` (*type:* `integer()`, *default:* `nil`) - Ad height.
  *   `impressionTrackingUrl` (*type:* `list(String.t)`, *default:* `nil`) - The set of urls to be called to record an impression.
  *   `kind` (*type:* `String.t`, *default:* `adexchangebuyer#creative`) - Resource type.
  *   `languages` (*type:* `list(String.t)`, *default:* `nil`) - Detected languages for this creative. Read-only. This field should not be set in requests.
  *   `nativeAd` (*type:* `GoogleApi.AdExchangeBuyer.V14.Model.CreativeNativeAd.t`, *default:* `nil`) - If nativeAd is set, HTMLSnippet, videoVastXML, and the videoURL outside of nativeAd should not be set. (The videoURL inside nativeAd can be set.)
  *   `openAuctionStatus` (*type:* `String.t`, *default:* `nil`) - Top-level open auction status. Read-only. This field should not be set in requests. If disapproved, an entry for auctionType=OPEN_AUCTION (or ALL) in servingRestrictions will also exist. Note that this may be nuanced with other contextual restrictions, in which case it may be preferable to read from ServingRestrictions directly.
  *   `productCategories` (*type:* `list(integer())`, *default:* `nil`) - Detected product categories, if any. Each category is represented by an integer as defined in  ad-product-categories.txt. Read-only. This field should not be set in requests.
  *   `restrictedCategories` (*type:* `list(integer())`, *default:* `nil`) - All restricted categories for the ads that may be shown from this snippet. Each category is represented by an integer as defined in the  ad-restricted-categories.txt.
  *   `sensitiveCategories` (*type:* `list(integer())`, *default:* `nil`) - Detected sensitive categories, if any. Each category is represented by an integer as defined in  ad-sensitive-categories.txt. Read-only. This field should not be set in requests.
  *   `servingRestrictions` (*type:* `list(GoogleApi.AdExchangeBuyer.V14.Model.CreativeServingRestrictions.t)`, *default:* `nil`) - The granular status of this ad in specific contexts. A context here relates to where something ultimately serves (for example, a physical location, a platform, an HTTPS vs HTTP request, or the type of auction). Read-only. This field should not be set in requests. See the examples in the Creatives guide for more details.
  *   `vendorType` (*type:* `list(integer())`, *default:* `nil`) - List of vendor types for the ads that may be shown from this snippet. Each vendor type is represented by an integer as defined in vendors.txt.
  *   `version` (*type:* `integer()`, *default:* `nil`) - The version for this creative. Read-only. This field should not be set in requests.
  *   `videoURL` (*type:* `String.t`, *default:* `nil`) - The URL to fetch a video ad. If set, HTMLSnippet, videoVastXML, and nativeAd should not be set. Note, this is different from resource.native_ad.video_url above.
  *   `videoVastXML` (*type:* `String.t`, *default:* `nil`) - The contents of a VAST document for a video ad. This document should conform to the VAST 2.0 or 3.0 standard. If set, HTMLSnippet, videoURL, and nativeAd and should not be set.
  *   `width` (*type:* `integer()`, *default:* `nil`) - Ad width.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :HTMLSnippet => String.t(),
          :accountId => integer(),
          :adChoicesDestinationUrl => String.t(),
          :adTechnologyProviders =>
            GoogleApi.AdExchangeBuyer.V14.Model.CreativeAdTechnologyProviders.t(),
          :advertiserId => list(String.t()),
          :advertiserName => String.t(),
          :agencyId => String.t(),
          :apiUploadTimestamp => DateTime.t(),
          :attribute => list(integer()),
          :buyerCreativeId => String.t(),
          :clickThroughUrl => list(String.t()),
          :corrections => list(GoogleApi.AdExchangeBuyer.V14.Model.CreativeCorrections.t()),
          :creativeStatusIdentityType => String.t(),
          :dealsStatus => String.t(),
          :detectedDomains => list(String.t()),
          :filteringReasons => GoogleApi.AdExchangeBuyer.V14.Model.CreativeFilteringReasons.t(),
          :height => integer(),
          :impressionTrackingUrl => list(String.t()),
          :kind => String.t(),
          :languages => list(String.t()),
          :nativeAd => GoogleApi.AdExchangeBuyer.V14.Model.CreativeNativeAd.t(),
          :openAuctionStatus => String.t(),
          :productCategories => list(integer()),
          :restrictedCategories => list(integer()),
          :sensitiveCategories => list(integer()),
          :servingRestrictions =>
            list(GoogleApi.AdExchangeBuyer.V14.Model.CreativeServingRestrictions.t()),
          :vendorType => list(integer()),
          :version => integer(),
          :videoURL => String.t(),
          :videoVastXML => String.t(),
          :width => integer()
        }

  field(:HTMLSnippet)
  field(:accountId)
  field(:adChoicesDestinationUrl)

  field(
    :adTechnologyProviders,
    as: GoogleApi.AdExchangeBuyer.V14.Model.CreativeAdTechnologyProviders
  )

  field(:advertiserId, type: :list)
  field(:advertiserName)
  field(:agencyId)
  field(:apiUploadTimestamp, as: DateTime)
  field(:attribute, type: :list)
  field(:buyerCreativeId)
  field(:clickThroughUrl, type: :list)
  field(:corrections, as: GoogleApi.AdExchangeBuyer.V14.Model.CreativeCorrections, type: :list)
  field(:creativeStatusIdentityType)
  field(:dealsStatus)
  field(:detectedDomains, type: :list)
  field(:filteringReasons, as: GoogleApi.AdExchangeBuyer.V14.Model.CreativeFilteringReasons)
  field(:height)
  field(:impressionTrackingUrl, type: :list)
  field(:kind)
  field(:languages, type: :list)
  field(:nativeAd, as: GoogleApi.AdExchangeBuyer.V14.Model.CreativeNativeAd)
  field(:openAuctionStatus)
  field(:productCategories, type: :list)
  field(:restrictedCategories, type: :list)
  field(:sensitiveCategories, type: :list)

  field(
    :servingRestrictions,
    as: GoogleApi.AdExchangeBuyer.V14.Model.CreativeServingRestrictions,
    type: :list
  )

  field(:vendorType, type: :list)
  field(:version)
  field(:videoURL)
  field(:videoVastXML)
  field(:width)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.Creative do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.Creative.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.Creative do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
