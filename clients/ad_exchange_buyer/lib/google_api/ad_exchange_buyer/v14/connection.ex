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

defmodule GoogleApi.AdExchangeBuyer.V14.Connection do
  @moduledoc """
  Handle Tesla connections for GoogleApi.AdExchangeBuyer.V14.
  """

  @type t :: Tesla.Env.client()

  use GoogleApi.Gax.Connection,
    scopes: [
      # Manage your Ad Exchange buyer account configuration
      "https://www.googleapis.com/auth/adexchange.buyer"
    ],
    otp_app: :google_api_adexchangebuyer,
    base_url: "https://www.googleapis.com/adexchangebuyer/v1.4/"
end
