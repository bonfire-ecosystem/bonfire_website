use Mix.Config

#### Email configuration

# You will almost certainly want to change at least some of these

# alias Bonfire.Mailer

# config :bonfire, Mailer,
#   from_address: "noreply@bonfire.local"

# include Phoenix web server boilerplate
# import_config "bonfire_web_phoenix.exs"

# include all used Bonfire extensions
import_config "bonfire_website.exs"


#### Basic configuration

# You probably won't want to touch these. You might override some in
# other config files.

config :bonfire, :repo_module, Bonfire.Repo

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :mime, :types, %{
  "application/activity+json" => ["activity+json"]
}

# import_config "#{Mix.env()}.exs"