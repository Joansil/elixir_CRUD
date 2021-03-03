# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :cad_user,
  ecto_repos: [CadUser.Repo]

# Configures the endpoint
config :cad_user, CadUserWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "UwO9FjO0/2ycQO6Wo4W9SMb6BQmZ5xA7/2zVuS0XrIRd1kDmPTIDSIVTWimY+U/k",
  render_errors: [view: CadUserWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: CadUser.PubSub,
  live_view: [signing_salt: "wT46Zuyy"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
