defmodule Rulex.MixProject do
  @moduledoc """
  Mix project for Rulex, an Elixir rule engine where rules are map objects.
  """
  use Mix.Project

  @version "1.1.0"
  @source_url "https://github.com/gondwe/rulex"

  def project do
    [
      app: :rulex,
      version: @version,
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "rulex",
      description: "An Elixir rule engine where rules are map objects.",
      source_url: @source_url,
      package: package(),
      docs: docs()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:odgn_json_pointer, "~> 3.1"},
      {:ex_doc, ">= 0.38.0", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{
        "GitHub" => @source_url,
      }
    ]
  end

  defp docs do
    [
      source_ref: "v#{@version}",
      main: "readme",
      extras: [
        "README.md"
      ]
    ]
  end
end
