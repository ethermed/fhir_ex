defmodule Fhir.RegulatedAuthorizationCase do
  @moduledoc """
  Regulatory approval, clearance or licencing related to a regulated product, treatment, facility or activity that is cited in a guidance, regulation, rule or legislative act. An example is Market Authorization relating to a Medicinal Product.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:dateDateTime, :string)
    field(:id, :string)
    embeds_one(:_dateDateTime, Fhir.Element)
    embeds_many(:application, Fhir.RegulatedAuthorizationCase)
    embeds_one(:datePeriod, Fhir.Period)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:identifier, Fhir.Identifier)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:status, Fhir.CodeableConcept)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          dateDateTime: String.t(),
          id: String.t(),
          _dateDateTime: Fhir.Element.t(),
          application: [Fhir.RegulatedAuthorizationCase.t()],
          datePeriod: Fhir.Period.t(),
          extension: [Fhir.Extension.t()],
          identifier: Fhir.Identifier.t(),
          modifierExtension: [Fhir.Extension.t()],
          status: Fhir.CodeableConcept.t(),
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:dateDateTime, :id])
    |> cast_embed(:_dateDateTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:application, with: &Fhir.RegulatedAuthorizationCase.changeset/2)
    |> cast_embed(:datePeriod, with: &Fhir.Period.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:status, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
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
