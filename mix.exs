defmodule Ash.MixProject do
  use Mix.Project

  def project do
    [
      app: :ash,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      elixirc_paths: elixirc_paths(Mix.env()),
      package: package(),
      deps: deps(),
      source_url: "https://github.com/ash-project/ash",
      homepage_url: "https://github.com/ash-project/ash"
    ]
  end

  defp package do
    [
      name: :ash,
      licenses: ["MIT"],
      links: %{
        GitHub: "https://github.com/ash-project/ash"
      }
    ]
  end

  defp elixirc_paths(:test) do
    ["lib", "test/support"]
  end

  defp elixirc_paths(_), do: ["lib"]

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto, "~> 3.0"},
      {:ets, github: "zachdaniel/ets", ref: "b96da05e75926e340e8a0fdfea9c095d97ed8d50"},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false}
    ]
  end
end
