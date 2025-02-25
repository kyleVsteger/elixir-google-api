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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Environment do
  @moduledoc """
  You can create multiple versions of your agent and publish them to separate environments. When you edit an agent, you are editing the draft agent. At any point, you can save the draft agent as an agent version, which is an immutable snapshot of your agent. When you save the draft agent, it is published to the default environment. When you create agent versions, you can publish them to custom environments. You can create a variety of custom environments for: - testing - development - production - etc. For more information, see the [versions and environments guide](https://cloud.google.com/dialogflow/docs/agents-versions).

  ## Attributes

  *   `agentVersion` (*type:* `String.t`, *default:* `nil`) - Optional. The agent version loaded into this environment. Supported formats: - `projects//agent/versions/` - `projects//locations//agent/versions/`
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. The developer-provided description for this environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  *   `fulfillment` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Fulfillment.t`, *default:* `nil`) - Optional. The fulfillment settings to use for this environment.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The unique identifier of this agent environment. Supported formats: - `projects//agent/environments/` - `projects//locations//agent/environments/`
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of this environment. This field is read-only, i.e., it cannot be set by create and update methods.
  *   `textToSpeechSettings` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2TextToSpeechSettings.t`, *default:* `nil`) - Optional. Text to speech settings for this environment.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last update time of this environment. This field is read-only, i.e., it cannot be set by create and update methods.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :agentVersion => String.t() | nil,
          :description => String.t() | nil,
          :fulfillment =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Fulfillment.t() | nil,
          :name => String.t() | nil,
          :state => String.t() | nil,
          :textToSpeechSettings =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2TextToSpeechSettings.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:agentVersion)
  field(:description)
  field(:fulfillment, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Fulfillment)
  field(:name)
  field(:state)

  field(:textToSpeechSettings,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2TextToSpeechSettings
  )

  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Environment do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Environment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Environment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
