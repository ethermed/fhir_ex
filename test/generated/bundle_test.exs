defmodule Fhir.BundleTest do
	use ExUnit.Case
	doctest Fhir.Bundle
	alias Fhir.Bundle
  alias Fhir.BundleFixture

  # TODO: make sure I can fully load a Bundle object here w/ the types and whatever all set. But this does NOT give a damn about how we might be mapping ethermed / mpm data TO Fhir. It's just verifying deserialization

  describe "new/1" do
    test "when passing in a FhirBundle from JSON, it full deserializes it" do

      dict = BundleFixture.bundle()
      assert {:ok, %Bundle{} = bundle} = Bundle.new(dict)
      assert is_list(bundle.entry)
    end
  end
end
