defmodule Fhir.OperationOutcomeIssue do
  @moduledoc """
  A collection of error, warning, or information messages that result from a system action.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:code, :string)
    field(:diagnostics, :string)
    field(:expression, :string)
    field(:id, :string)
    field(:location, :string)
    field(:severity, :string)
    embeds_one(:_code, Fhir.Element)
    embeds_one(:_diagnostics, Fhir.Element)
    embeds_many(:_expression, Fhir.Element)
    embeds_many(:_location, Fhir.Element)
    embeds_one(:_severity, Fhir.Element)
    embeds_one(:details, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          code: String.t(),
          diagnostics: String.t(),
          expression: String.t(),
          id: String.t(),
          location: String.t(),
          severity: String.t(),
          _code: Fhir.Element.t(),
          _diagnostics: Fhir.Element.t(),
          _expression: [Fhir.Element.t()],
          _location: [Fhir.Element.t()],
          _severity: Fhir.Element.t(),
          details: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:code, :diagnostics, :expression, :id, :location, :severity])
    |> cast_embed(:_code, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_diagnostics, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_expression, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_location, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_severity, with: &Fhir.Element.changeset/2)
    |> cast_embed(:details, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:code, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:diagnostics, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:severity, ~r/^[^\s]+( [^\s]+)*$/)
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
