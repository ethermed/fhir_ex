defmodule Fhir.ObservationDefinitionComponent do
  @moduledoc """
  Set of definitional characteristics for a kind of observation or measurement produced or consumed by an orderable health care service.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:permittedDataType, :string)
    embeds_many(:_permittedDataType, Fhir.Element)
    embeds_one(:code, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:permittedUnit, Fhir.Coding)
    embeds_many(:qualifiedValue, Fhir.ObservationDefinitionQualifiedValue)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          permittedDataType: String.t(),
          _permittedDataType: [Fhir.Element.t()],
          code: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          permittedUnit: [Fhir.Coding.t()],
          qualifiedValue: [Fhir.ObservationDefinitionQualifiedValue.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :permittedDataType])
    |> cast_embed(:_permittedDataType, with: &Fhir.Element.changeset/2)
    |> cast_embed(:code, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:permittedUnit, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:qualifiedValue, with: &Fhir.ObservationDefinitionQualifiedValue.changeset/2)
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
