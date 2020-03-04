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

defmodule GoogleApi.SQLAdmin.V1beta4.Api.BackupRuns do
  @moduledoc """
  API calls for all endpoints tagged `BackupRuns`.
  """

  alias GoogleApi.SQLAdmin.V1beta4.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Deletes the backup taken by a backup run.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.SQLAdmin.V1beta4.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID of the project that contains the instance.
  *   `instance` (*type:* `String.t`) - Cloud SQL instance ID. This does not include the project ID.
  *   `id` (*type:* `String.t`) - The ID of the Backup Run to delete. To find a Backup Run ID, use the <a
      href="/sql/docs/db_path/admin-api/rest/v1beta4/backupRuns/list">list</a>
      method.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:resourceName` (*type:* `String.t`) - The name of the backupRun to delete.
          Format:
          projects/{project}/locations/{location}/instances/{instance}/backupRuns/{backupRun}
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec sql_backup_runs_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def sql_backup_runs_delete(connection, project, instance, id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :resourceName => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/sql/v1beta4/projects/{project}/instances/{instance}/backupRuns/{id}", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "instance" => URI.encode(instance, &URI.char_unreserved?/1),
        "id" => URI.encode(id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}])
  end

  @doc """
  Retrieves a resource containing information about a backup run.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.SQLAdmin.V1beta4.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID of the project that contains the instance.
  *   `instance` (*type:* `String.t`) - Cloud SQL instance ID. This does not include the project ID.
  *   `id` (*type:* `String.t`) - The ID of this Backup Run.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:resourceName` (*type:* `String.t`) - Name of the resource backupRun.
          Format:
          projects/{project}/locations/{location}/instances/{instance}/backupRuns/{backupRun}
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.SQLAdmin.V1beta4.Model.BackupRun{}}` on success
  *   `{:error, info}` on failure
  """
  @spec sql_backup_runs_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.SQLAdmin.V1beta4.Model.BackupRun.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def sql_backup_runs_get(connection, project, instance, id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :resourceName => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/sql/v1beta4/projects/{project}/instances/{instance}/backupRuns/{id}", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "instance" => URI.encode(instance, &URI.char_unreserved?/1),
        "id" => URI.encode(id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.SQLAdmin.V1beta4.Model.BackupRun{}])
  end

  @doc """
  Creates a new backup run on demand. This method is applicable only to
  Second Generation instances.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.SQLAdmin.V1beta4.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID of the project that contains the instance.
  *   `instance` (*type:* `String.t`) - Cloud SQL instance ID. This does not include the project ID.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:parent` (*type:* `String.t`) - The parent resource where Cloud SQL should create this backupRun.
          Format: projects/{project}/locations/{location}/instances/{instance}
      *   `:body` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.BackupRun.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec sql_backup_runs_insert(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def sql_backup_runs_insert(connection, project, instance, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :parent => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/sql/v1beta4/projects/{project}/instances/{instance}/backupRuns", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "instance" => URI.encode(instance, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}])
  end

  @doc """
  Lists all backup runs associated with a given instance and configuration in
  the reverse chronological order of the backup initiation time.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.SQLAdmin.V1beta4.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID of the project that contains the instance.
  *   `instance` (*type:* `String.t`) - Cloud SQL instance ID. This does not include the project ID.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:maxResults` (*type:* `integer()`) - Maximum number of backup runs per response.
      *   `:pageToken` (*type:* `String.t`) - A previously-returned page token representing part of the larger set of
          results to view.
      *   `:parent` (*type:* `String.t`) - The parent, which owns this collection of backupRuns.
          Format: projects/{project}/locations/{location}/instances/{instance}
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.SQLAdmin.V1beta4.Model.BackupRunsListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec sql_backup_runs_list(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.SQLAdmin.V1beta4.Model.BackupRunsListResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def sql_backup_runs_list(connection, project, instance, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :maxResults => :query,
      :pageToken => :query,
      :parent => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/sql/v1beta4/projects/{project}/instances/{instance}/backupRuns", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "instance" => URI.encode(instance, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.SQLAdmin.V1beta4.Model.BackupRunsListResponse{}]
    )
  end
end
