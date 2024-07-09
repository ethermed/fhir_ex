defmodule Fhir.RegulatedAuthorization do
  @moduledoc """
  Regulatory approval, clearance or licencing related to a regulated product, treatment, facility or activity that is cited in a guidance, regulation, rule or legislative act. An example is Market Authorization relating to a Medicinal Product.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:description, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:resourceType, :string, default: "RegulatedAuthorization")
    field(:statusDate, :string)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_statusDate, Fhir.Element)
    embeds_many(:attachedDocument, Fhir.Reference)
    embeds_many(:basis, Fhir.CodeableConcept)
    embeds_one(:case, Fhir.RegulatedAuthorizationCase)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:holder, Fhir.Reference)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:indication, Fhir.CodeableReference)
    embeds_one(:intendedUse, Fhir.CodeableConcept)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:region, Fhir.CodeableConcept)
    embeds_one(:regulator, Fhir.Reference)
    embeds_one(:status, Fhir.CodeableConcept)
    embeds_many(:subject, Fhir.Reference)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:type, Fhir.CodeableConcept)
    embeds_one(:validityPeriod, Fhir.Period)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          resourceType: String.t(),
          statusDate: String.t(),
          _description: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _statusDate: Fhir.Element.t(),
          attachedDocument: [Fhir.Reference.t()],
          basis: [Fhir.CodeableConcept.t()],
          case: Fhir.RegulatedAuthorizationCase.t(),
          contained: [Fhir.ResourceList.t()],
          extension: [Fhir.Extension.t()],
          holder: Fhir.Reference.t(),
          identifier: [Fhir.Identifier.t()],
          indication: [Fhir.CodeableReference.t()],
          intendedUse: Fhir.CodeableConcept.t(),
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          region: [Fhir.CodeableConcept.t()],
          regulator: Fhir.Reference.t(),
          status: Fhir.CodeableConcept.t(),
          subject: [Fhir.Reference.t()],
          text: Fhir.Narrative.t(),
          type: Fhir.CodeableConcept.t(),
          validityPeriod: Fhir.Period.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:description, :id, :implicitRules, :language, :resourceType, :statusDate])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_statusDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:attachedDocument, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:basis, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:case, with: &Fhir.RegulatedAuthorizationCase.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:holder, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:indication, with: &Fhir.CodeableReference.changeset/2)
    |> cast_embed(:intendedUse, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:region, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:regulator, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:status, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:subject, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:validityPeriod, with: &Fhir.Period.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(
      :statusDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
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
