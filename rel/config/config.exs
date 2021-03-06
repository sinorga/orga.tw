# It's for runtime configuration, compare to PROJ_ROOT/config/*.exs are for compile time configuration
use Mix.Config

config :orga, Orga.Repo,
  username: System.get_env("DATABASE_USER"),
  password: System.get_env("DATABASE_PASS"),
  database: System.get_env("DATABASE_NAME"),
  hostname: System.get_env("DATABASE_HOST"),
  pool_size: 15

port = String.to_integer(System.get_env("PORT") || "8080")

config :orga, OrgaWeb.Endpoint,
  http: [port: port],
  url: [host: System.get_env("HOSTNAME"), port: port],
  root: ".",
  secret_key_base: System.get_env("SECRET_KEY_BASE")
