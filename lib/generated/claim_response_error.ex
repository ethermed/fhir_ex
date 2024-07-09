defmodule Fhir.ClaimResponseError do
  @moduledoc """
  This resource provides the adjudication details from the processing of a Claim resource.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:detailSequence, :float)
    field(:expression, :string)
    field(:id, :string)
    field(:itemSequence, :float)
    field(:subDetailSequence, :float)
    embeds_one(:_detailSequence, Fhir.Element)
    embeds_many(:_expression, Fhir.Element)
    embeds_one(:_itemSequence, Fhir.Element)
    embeds_one(:_subDetailSequence, Fhir.Element)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          detailSequence: float(),
          expression: String.t(),
          id: String.t(),
          itemSequence: float(),
          subDetailSequence: float(),
          _detailSequence: Fhir.Element.t(),
          _expression: [Fhir.Element.t()],
          _itemSequence: Fhir.Element.t(),
          _subDetailSequence: Fhir.Element.t(),
          code: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:detailSequence, :expression, :id, :itemSequence, :subDetailSequence])
    |> cast_embed(:_detailSequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_expression, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_itemSequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_subDetailSequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
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
