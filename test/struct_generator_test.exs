defmodule StructGeneratorTest do
  use ExUnit.Case
  doctest StructGenerator
  alias StructGenerator

  setup_all do
    schema = SchemaLoader.load_schema("priv/fhir.schema.6.0.json")
    all_defs = schema["definitions"]
    bundle = get_in(schema, ~w(definitions Bundle))
    identifier = get_in(schema, ~w(definitions Identifier))

    %{all_defs: all_defs, schema: schema, bundle: bundle, identifier: identifier}
  end

  describe "get_fields/2" do
    test "it chooses the right fields for the Bundle type", %{bundle: bundle, all_defs: all_defs} do
      fields = StructGenerator.get_fields(bundle["properties"], all_defs)

      assert fields ==
               String.trim_trailing("""
               field :id, :string
                   field :implicitRules, :string
                   field :language, :string
                   field :resourceType, :string, default: \"Bundle\"
                   field :timestamp, :string
                   field :total, :float
                   field :type, :string
               """)
    end

    test "it chooses the right fields for the Identifier", %{
      identifier: identifier,
      all_defs: all_defs
    } do
      fields = StructGenerator.get_fields(identifier["properties"], all_defs)

      assert fields ==
               String.trim_trailing("""
               field :id, :string
                   field :system, :string
                   field :use, Ecto.Enum, values: [:usual, :official, :temp, :secondary, :old]
                   field :value, :string
               """)
    end
  end

  describe "get_embeds/2" do
    test "it chooses the right embeds for the Bundle type", %{bundle: bundle, all_defs: all_defs} do
      embeds = StructGenerator.get_embeds(bundle["properties"], all_defs)

      assert embeds ==
               String.trim_trailing("""
               embeds_one :_implicitRules, Fhir.Element
                   embeds_one :_language, Fhir.Element
                   embeds_one :_timestamp, Fhir.Element
                   embeds_one :_total, Fhir.Element
                   embeds_one :_type, Fhir.Element
                   embeds_many :entry, Fhir.BundleEntry
                   embeds_one :identifier, Fhir.Identifier
                   embeds_one :issues, Fhir.ResourceList
                   embeds_many :link, Fhir.BundleLink
                   embeds_one :meta, Fhir.Meta
                   embeds_one :signature, Fhir.Signature
               """)
    end
  end

  describe "generate_typespecs/2" do
    test "it generates the right typespecs for the Bundle type", %{
      bundle: bundle,
      all_defs: all_defs
    } do
      fields = StructGenerator.get_fields(bundle["properties"], all_defs)
      embeds = StructGenerator.get_embeds(bundle["properties"], all_defs)
      typespecs = StructGenerator.generate_typespecs(fields, embeds)

      assert typespecs == """
             @type t :: %__MODULE__{
                     id: String.t(),
                     implicitRules: String.t(),
                     language: String.t(),
                     resourceType: String.t(),
                     timestamp: String.t(),
                     total: float(),
                     type: String.t(),
                     _implicitRules: Fhir.Element.t(),
                     _language: Fhir.Element.t(),
                     _timestamp: Fhir.Element.t(),
                     _total: Fhir.Element.t(),
                     _type: Fhir.Element.t(),
                     entry: [Fhir.BundleEntry.t()],
                     identifier: Fhir.Identifier.t(),
                     issues: Fhir.ResourceList.t(),
                     link: [Fhir.BundleLink.t()],
                     meta: Fhir.Meta.t(),
                     signature: Fhir.Signature.t()
                 }
             """
    end

    test "it generates the right typespecs for the Identifier type", %{
      identifier: identifier,
      all_defs: all_defs
    } do
      fields = StructGenerator.get_fields(identifier["properties"], all_defs)
      embeds = StructGenerator.get_embeds(identifier["properties"], all_defs)
      typespecs = StructGenerator.generate_typespecs(fields, embeds)

      assert typespecs == """
             @type t :: %__MODULE__{
                     id: String.t(),
                     system: String.t(),
                     use: String.t(),
                     value: String.t(),
                     _system: Fhir.Element.t(),
                     _use: Fhir.Element.t(),
                     _value: Fhir.Element.t(),
                     assigner: Fhir.Reference.t(),
                     extension: [Fhir.Extension.t()],
                     period: Fhir.Period.t(),
                     type: Fhir.CodeableConcept.t()
                 }
             """
    end
  end

  test "get_field_names/1", %{bundle: bundle, all_defs: all_defs} do
    fields = StructGenerator.get_fields(bundle["properties"], all_defs)
    field_names = StructGenerator.get_field_names(fields)

    assert field_names ==
             "[:id, :implicitRules, :language, :resourceType, :timestamp, :total, :type]"
  end

  test "generate_cast_embeds/1", %{bundle: bundle, all_defs: all_defs} do
    embeds = StructGenerator.get_embeds(bundle["properties"], all_defs)
    cast_embeds = StructGenerator.generate_cast_embeds(embeds)

    assert cast_embeds ==
             String.trim_trailing("""
             |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
                 |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
                 |> cast_embed(:_timestamp, with: &Fhir.Element.changeset/2)
                 |> cast_embed(:_total, with: &Fhir.Element.changeset/2)
                 |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
                 |> cast_embed(:entry, with: &Fhir.BundleEntry.changeset/2)
                 |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
                 |> cast_embed(:issues, with: &Fhir.ResourceList.changeset/2)
                 |> cast_embed(:link, with: &Fhir.BundleLink.changeset/2)
                 |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
                 |> cast_embed(:signature, with: &Fhir.Signature.changeset/2)
             """)
  end

  test "generate_validations/1", %{bundle: bundle, all_defs: all_defs} do
    validations = StructGenerator.generate_validations(bundle["properties"], all_defs)

    assert validations ==
             String.trim_trailing("""
             |> validate_format(:id, ~r/^[A-Za-z0-9\\-\\.]{1,64}$/)
                 |> validate_format(:implicitRules, ~r/^\\S*$/)
                 |> validate_format(:language, ~r/^[^\\s]+( [^\\s]+)*$/)
                 |> validate_format(:timestamp, ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\\.[0-9]{1,9})?(Z|(\\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))$/)
                 |> validate_format(:total, ~r/^[0]|([1-9][0-9]*)$/)
                 |> validate_format(:type, ~r/^[^\\s]+( [^\\s]+)*$/)
             """)
  end

  # [
  #   ["NA", "string", ":string"],
  #   ["NA", "boolean", ":boolean"],
  #   ["NA", "number", ":float"],
  #   ["NA", "integer", ":integer"],
  #   ["date", "NA", ":date"],
  #   ["dateTime", "NA", ":datetime"],
  #   ["decimal", "NA", ":decimal"],
  #   ["instant", "NA", ":timestamp"],
  #   ["integer64", "NA", ":integer"],
  #   ["xhtml", "NA", ":string"],
  #   ["id", "NA", ":string"]
  # ]
  # |> Enum.map(fn [name, def, expected] ->
  #   @name name
  #   @def def
  #   @expected expected

  #   test "map_type #{@name}:'type' => '#{@def}' --> #{@expected}" do
  #     assert StructGenerator.map_type(@name, %{"type" => @def}) == @expected
  #   end
  # end)

  # [
  #   ["NA", "#/definitions/xhtml", ":string"],
  #   ["NA", "#/definitions/Extension", "Fhir.Extension"]
  # ]
  # |> Enum.map(fn [name, ref, expected] ->
  #   @name name
  #   @ref ref
  #   @expected expected

  #   test "map ref #{@name}:'$ref' => '#{@ref}' --> #{@expected}" do
  #     assert StructGenerator.map_type(@name, %{"$ref" => @ref}) == @expected
  #   end
  # end)

  # test "it will follow a ref til it finds the target type" do
  #   all_defs = %{
  #     "code" => %{
  #       "description" =>
  #         "Detailed description of the type of activity; e.g. What lab test, what procedure, what kind of encounter.",
  #       "$ref" => "#/definitions/CodeableConcept"
  #     },
  #     "priority" => %{
  #       "description" =>
  #         "Indicates how quickly the activity  should be addressed with respect to other requests.",
  #       "$ref" => "#/definitions/code"
  #     }
  #   }

  #   assert StructGenerator.map_type("priority", all_defs["priority"], all_defs) ==
  #            "Fhir.CodeableConcept"
  # end

  # test "it will use the Ecto.Enum type" do
  #   assert StructGenerator.map_type("NA", %{"enum" => ["one", "two", "three"]}) ==
  #            "Ecto.Enum, values: [:one, :two, :three]"
  # end
end
