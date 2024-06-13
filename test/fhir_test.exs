defmodule FhirTest do
  use ExUnit.Case
  doctest Fhir

  test "greets the world" do
    assert Fhir.hello() == :world
  end
end
