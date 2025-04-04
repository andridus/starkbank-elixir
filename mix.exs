defmodule StarkBank.MixProject do
  use Mix.Project

  def project do
    [
      app: :starkbank,
      name: :starkbank,
      version: "2.6.2",
      homepage_url: "https://starkbank.com",
      source_url: "https://github.com/starkbank/sdk-elixir",
      description: description(),
      elixir: "~> 1.4",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()
    ]
  end

  defp package do
    [
      maintainers: ["Stark Bank"],
      licenses: [:MIT],
      links: %{
        "StarkBank" => "https://starkbank.com",
        "GitHub" => "https://github.com/starkbank/sdk-elixir"
      }
    ]
  end

  defp description do
    "SDK to make integrations with the Stark Bank API easier."
  end

  def application do
    [
      extra_applications: [:inets]
    ]
  end

  defp deps do
    [
      {:starkbank_ecdsa, github: "andridus/ecdsa-elixir"},
      {:jason, "~> 1.1"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end
end
