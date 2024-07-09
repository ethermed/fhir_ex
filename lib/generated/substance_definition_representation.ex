defmodule Fhir.SubstanceDefinitionRepresentation do
  @moduledoc """
  The detailed description of a substance, typically at a level beyond what is used for prescribing.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:representation, :string)
    embeds_one(:_representation, Fhir.Element)
    embeds_one(:document, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:format, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          representation: String.t(),
          _representation: Fhir.Element.t(),
          document: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          format: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()],
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :representation])
    |> cast_embed(:_representation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:document, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:format, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:representation, ~r/^^[\s\S]+$$/)
  end

  def new(params) do
    %__MODULE__{}
    |> changeset(params)
    |> apply_action(:new)
  end

  def new!(params) do
    case new(params) do
      {:ok, val} -> val
      {:error, cs} -> raise "Invalid #{__ENV__.module}.new!(): #{inspect(cs.errors)}"
    end
  end
end
