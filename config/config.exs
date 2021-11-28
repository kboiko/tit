# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :tit,
  ecto_repos: [Tit.Repo]

# Configures the endpoint
config :tit, TitWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "oTEI/Av8hjY8CPkcodWQ1Kunr8tjRGU42NAzVMPtH6R1BKdJuSMx6ijxsW82IMIg",
  render_errors: [view: TitWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Tit.PubSub,
  live_view: [signing_salt: "D0GVRC5q"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
