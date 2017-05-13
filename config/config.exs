# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :hello_world_edeliver, HelloWorldEdeliver.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qc7aI13N9nWn9v0KROGBuTZPEix2NwEz1eEd/lbF8zNYQs3hdIOA+kpR/d4gyHKA",
  render_errors: [view: HelloWorldEdeliver.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HelloWorldEdeliver.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
