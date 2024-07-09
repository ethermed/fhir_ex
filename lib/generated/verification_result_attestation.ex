defmodule Fhir.VerificationResultAttestation do
  @moduledoc """
  Describes validation requirements, source(s), status and dates for one or more elements.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:date, :string)
    field(:id, :string)
    field(:proxyIdentityCertificate, :string)
    field(:sourceIdentityCertificate, :string)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:_proxyIdentityCertificate, Fhir.Element)
    embeds_one(:_sourceIdentityCertificate, Fhir.Element)
    embeds_one(:communicationMethod, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:onBehalfOf, Fhir.Reference)
    embeds_one(:proxySignature, Fhir.Signature)
    embeds_one(:sourceSignature, Fhir.Signature)
    embeds_one(:who, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          date: String.t(),
          id: String.t(),
          proxyIdentityCertificate: String.t(),
          sourceIdentityCertificate: String.t(),
          _date: Fhir.Element.t(),
          _proxyIdentityCertificate: Fhir.Element.t(),
          _sourceIdentityCertificate: Fhir.Element.t(),
          communicationMethod: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          onBehalfOf: Fhir.Reference.t(),
          proxySignature: Fhir.Signature.t(),
          sourceSignature: Fhir.Signature.t(),
          who: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:date, :id, :proxyIdentityCertificate, :sourceIdentityCertificate])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_proxyIdentityCertificate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sourceIdentityCertificate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:communicationMethod, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:onBehalfOf, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:proxySignature, with: &Fhir.Signature.changeset/2)
    |> cast_embed(:sourceSignature, with: &Fhir.Signature.changeset/2)
    |> cast_embed(:who, with: &Fhir.Reference.changeset/2)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:proxyIdentityCertificate, ~r/^^[\s\S]+$$/)
    |> validate_format(:sourceIdentityCertificate, ~r/^^[\s\S]+$$/)
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
