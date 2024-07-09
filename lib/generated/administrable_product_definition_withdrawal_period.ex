defmodule Fhir.AdministrableProductDefinitionWithdrawalPeriod do
  @moduledoc """
  A medicinal product in the final form which is suitable for administering to a patient (after any mixing of multiple components, dissolution etc. has been performed).
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:supportingInformation, :string)
    embeds_one(:_supportingInformation, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:tissue, Fhir.CodeableConcept)
    embeds_one(:value, Fhir.Quantity)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          supportingInformation: String.t(),
          _supportingInformation: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          tissue: Fhir.CodeableConcept.t(),
          value: Fhir.Quantity.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :supportingInformation])
    |> cast_embed(:_supportingInformation, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:tissue, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:value, with: &Fhir.Quantity.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:supportingInformation, ~r/^^[\s\S]+$$/)
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
