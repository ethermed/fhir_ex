defmodule StructGeneratorTest do
  use ExUnit.Case
  doctest StructGenerator
  alias StructGenerator

  [
    ["NA", "string", ":string"],
    ["NA", "boolean", ":boolean"],
    ["NA", "number", ":float"],
    ["NA", "integer", ":integer"],
    ["date", "NA", ":date"],
    ["dateTime", "NA", ":datetime"],
    ["decimal", "NA", ":decimal"],
    ["instant", "NA", ":timestamp"],
    ["integer64", "NA", ":integer"],
    ["xhtml", "NA", ":string"],
    ["id", "NA", ":string"]
  ]
  |> Enum.map(fn [name, def, expected] ->
    @name name
    @def def
    @expected expected

    test "map_type #{@name}:'type' => '#{@def}' --> #{@expected}" do
      assert StructGenerator.map_type(@name, %{"type" => @def}) == @expected
    end
  end)

  [
    ["NA", "#/definitions/xhtml", ":string"],
    ["NA", "#/definitions/Extension", "Fhir.Extension"]
  ]
  |> Enum.map(fn [name, ref, expected] ->
    @name name
    @ref ref
    @expected expected

    test "map ref #{@name}:'$ref' => '#{@ref}' --> #{@expected}" do
      assert StructGenerator.map_type(@name, %{"$ref" => @ref}) == @expected
    end
  end)

  test "it will follow a ref til it finds the target type" do
    all_defs = %{
      "code" => %{
        "description" =>
          "Detailed description of the type of activity; e.g. What lab test, what procedure, what kind of encounter.",
        "$ref" => "#/definitions/CodeableConcept"
      },
      "priority" => %{
        "description" =>
          "Indicates how quickly the activity  should be addressed with respect to other requests.",
        "$ref" => "#/definitions/code"
      }
    }

    assert StructGenerator.map_type("priority", all_defs["priority"], all_defs) ==
             "Fhir.CodeableConcept"
  end
end
