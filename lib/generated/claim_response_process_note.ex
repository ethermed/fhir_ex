defmodule Fhir.ClaimResponseProcessNote do
  @moduledoc """
  This resource provides the adjudication details from the processing of a Claim resource.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:number, :float)
    field(:text, :string)
    embeds_one(:_number, Fhir.Element)
    embeds_one(:_text, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:language, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          number: float(),
          text: String.t(),
          _number: Fhir.Element.t(),
          _text: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          language: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()],
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :number, :text])
    |> cast_embed(:_number, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_text, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:language, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:text, ~r/^^[\s\S]+$$/)
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
