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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.Proposal do
  @moduledoc """
  Represents a proposal in the marketplace. A proposal is the unit of negotiation between a seller and a buyer and contains deals which are served. Each field in a proposal can have one of the following setting:

  (readonly) - It is an error to try and set this field. (buyer-readonly) - Only the seller can set this field. (seller-readonly) - Only the buyer can set this field. (updatable) - The field is updatable at all times by either buyer or the seller.

  ## Attributes

  *   `billedBuyer` (*type:* `GoogleApi.AdExchangeBuyer.V14.Model.Buyer.t`, *default:* `nil`) - Reference to the buyer that will get billed for this proposal. (readonly)
  *   `buyer` (*type:* `GoogleApi.AdExchangeBuyer.V14.Model.Buyer.t`, *default:* `nil`) - Reference to the buyer on the proposal. (readonly, except on create)
  *   `buyerContacts` (*type:* `list(GoogleApi.AdExchangeBuyer.V14.Model.ContactInformation.t)`, *default:* `nil`) - Optional contact information of the buyer. (seller-readonly)
  *   `buyerPrivateData` (*type:* `GoogleApi.AdExchangeBuyer.V14.Model.PrivateData.t`, *default:* `nil`) - Private data for buyer. (hidden from seller).
  *   `dbmAdvertiserIds` (*type:* `list(String.t)`, *default:* `nil`) - IDs of DBM advertisers permission to this proposal.
  *   `hasBuyerSignedOff` (*type:* `boolean()`, *default:* `nil`) - When an proposal is in an accepted state, indicates whether the buyer has signed off. Once both sides have signed off on a deal, the proposal can be finalized by the seller. (seller-readonly)
  *   `hasSellerSignedOff` (*type:* `boolean()`, *default:* `nil`) - When an proposal is in an accepted state, indicates whether the buyer has signed off Once both sides have signed off on a deal, the proposal can be finalized by the seller. (buyer-readonly)
  *   `inventorySource` (*type:* `String.t`, *default:* `nil`) - What exchange will provide this inventory (readonly, except on create).
  *   `isRenegotiating` (*type:* `boolean()`, *default:* `nil`) - True if the proposal is being renegotiated (readonly).
  *   `isSetupComplete` (*type:* `boolean()`, *default:* `nil`) - True, if the buyside inventory setup is complete for this proposal. (readonly, except via OrderSetupCompleted action) Deprecated in favor of deal level setup complete flag.
  *   `kind` (*type:* `String.t`, *default:* `adexchangebuyer#proposal`) - Identifies what kind of resource this is. Value: the fixed string "adexchangebuyer#proposal".
  *   `labels` (*type:* `list(GoogleApi.AdExchangeBuyer.V14.Model.MarketplaceLabel.t)`, *default:* `nil`) - List of labels associated with the proposal. (readonly)
  *   `lastUpdaterOrCommentorRole` (*type:* `String.t`, *default:* `nil`) - The role of the last user that either updated the proposal or left a comment. (readonly)
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name for the proposal (updatable)
  *   `negotiationId` (*type:* `String.t`, *default:* `nil`) - Optional negotiation id if this proposal is a preferred deal proposal.
  *   `originatorRole` (*type:* `String.t`, *default:* `nil`) - Indicates whether the buyer/seller created the proposal.(readonly)
  *   `privateAuctionId` (*type:* `String.t`, *default:* `nil`) - Optional private auction id if this proposal is a private auction proposal.
  *   `proposalId` (*type:* `String.t`, *default:* `nil`) - The unique id of the proposal. (readonly).
  *   `proposalState` (*type:* `String.t`, *default:* `nil`) - The current state of the proposal. (readonly)
  *   `revisionNumber` (*type:* `String.t`, *default:* `nil`) - The revision number for the proposal (readonly).
  *   `revisionTimeMs` (*type:* `String.t`, *default:* `nil`) - The time (ms since epoch) when the proposal was last revised (readonly).
  *   `seller` (*type:* `GoogleApi.AdExchangeBuyer.V14.Model.Seller.t`, *default:* `nil`) - Reference to the seller on the proposal. (readonly, except on create)
  *   `sellerContacts` (*type:* `list(GoogleApi.AdExchangeBuyer.V14.Model.ContactInformation.t)`, *default:* `nil`) - Optional contact information of the seller (buyer-readonly).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :billedBuyer => GoogleApi.AdExchangeBuyer.V14.Model.Buyer.t(),
          :buyer => GoogleApi.AdExchangeBuyer.V14.Model.Buyer.t(),
          :buyerContacts => list(GoogleApi.AdExchangeBuyer.V14.Model.ContactInformation.t()),
          :buyerPrivateData => GoogleApi.AdExchangeBuyer.V14.Model.PrivateData.t(),
          :dbmAdvertiserIds => list(String.t()),
          :hasBuyerSignedOff => boolean(),
          :hasSellerSignedOff => boolean(),
          :inventorySource => String.t(),
          :isRenegotiating => boolean(),
          :isSetupComplete => boolean(),
          :kind => String.t(),
          :labels => list(GoogleApi.AdExchangeBuyer.V14.Model.MarketplaceLabel.t()),
          :lastUpdaterOrCommentorRole => String.t(),
          :name => String.t(),
          :negotiationId => String.t(),
          :originatorRole => String.t(),
          :privateAuctionId => String.t(),
          :proposalId => String.t(),
          :proposalState => String.t(),
          :revisionNumber => String.t(),
          :revisionTimeMs => String.t(),
          :seller => GoogleApi.AdExchangeBuyer.V14.Model.Seller.t(),
          :sellerContacts => list(GoogleApi.AdExchangeBuyer.V14.Model.ContactInformation.t())
        }

  field(:billedBuyer, as: GoogleApi.AdExchangeBuyer.V14.Model.Buyer)
  field(:buyer, as: GoogleApi.AdExchangeBuyer.V14.Model.Buyer)
  field(:buyerContacts, as: GoogleApi.AdExchangeBuyer.V14.Model.ContactInformation, type: :list)
  field(:buyerPrivateData, as: GoogleApi.AdExchangeBuyer.V14.Model.PrivateData)
  field(:dbmAdvertiserIds, type: :list)
  field(:hasBuyerSignedOff)
  field(:hasSellerSignedOff)
  field(:inventorySource)
  field(:isRenegotiating)
  field(:isSetupComplete)
  field(:kind)
  field(:labels, as: GoogleApi.AdExchangeBuyer.V14.Model.MarketplaceLabel, type: :list)
  field(:lastUpdaterOrCommentorRole)
  field(:name)
  field(:negotiationId)
  field(:originatorRole)
  field(:privateAuctionId)
  field(:proposalId)
  field(:proposalState)
  field(:revisionNumber)
  field(:revisionTimeMs)
  field(:seller, as: GoogleApi.AdExchangeBuyer.V14.Model.Seller)
  field(:sellerContacts, as: GoogleApi.AdExchangeBuyer.V14.Model.ContactInformation, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.Proposal do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.Proposal.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.Proposal do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
