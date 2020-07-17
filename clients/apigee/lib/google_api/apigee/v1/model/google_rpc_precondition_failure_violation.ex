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

defmodule GoogleApi.Apigee.V1.Model.GoogleRpcPreconditionFailureViolation do
  @moduledoc """
  A message type used to describe a single precondition failure.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - A description of how the precondition failed. Developers can use this
      description to understand how to fix the failure.

      For example: "Terms of service not accepted".
  *   `subject` (*type:* `String.t`, *default:* `nil`) - The subject, relative to the type, that failed.
      For example, "google.com/cloud" relative to the "TOS" type would indicate
      which terms of service is being referenced.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of PreconditionFailure. We recommend using a service-specific
      enum type to define the supported precondition violation subjects. For
      example, "TOS" for "Terms of Service violation".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t(),
          :subject => String.t(),
          :type => String.t()
        }

  field(:description)
  field(:subject)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleRpcPreconditionFailureViolation do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleRpcPreconditionFailureViolation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleRpcPreconditionFailureViolation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
