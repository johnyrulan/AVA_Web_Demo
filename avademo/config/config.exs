# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :avademo, AvademoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xJW+UO89aABZt5vK3iTEhF7sKkG/7qu7cd7s92KxnT9xyerYZACd3YdORbqoks3/",
  render_errors: [view: AvademoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Avademo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
