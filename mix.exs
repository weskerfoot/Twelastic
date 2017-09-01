defmodule Twelastic.Mixfile do
  use Mix.Project

  def project do
    [
      app: :twelastic,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :extwitter, :elastix, :oauthor, :poison]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:extwitter, "~> 0.8.6"},
      {:elastix, "~> 0.4.0"},
      {:distillery, "~> 1.4", runtime: false}

      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
