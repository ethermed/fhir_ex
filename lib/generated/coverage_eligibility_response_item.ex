defmodule Fhir.CoverageEligibilityResponseItem do
  @moduledoc """
  This resource provides eligibility and plan details from the processing of an CoverageEligibilityRequest resource.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:authorizationRequired, :boolean)
    field(:authorizationUrl, :string)
    field(:description, :string)
    field(:excluded, :boolean)
    field(:id, :string)
    field(:name, :string)
    embeds_one(:_authorizationRequired, Fhir.Element)
    embeds_one(:_authorizationUrl, Fhir.Element)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_excluded, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_many(:authorizationSupporting, Fhir.CodeableConcept)
    embeds_many(:benefit, Fhir.CoverageEligibilityResponseBenefit)
    embeds_one(:category, Fhir.CodeableConcept)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifier, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:network, Fhir.CodeableConcept)
    embeds_one(:productOrService, Fhir.CodeableConcept)
    embeds_one(:provider, Fhir.Reference)
    embeds_one(:term, Fhir.CodeableConcept)
    embeds_one(:unit, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          authorizationRequired: boolean(),
          authorizationUrl: String.t(),
          description: String.t(),
          excluded: boolean(),
          id: String.t(),
          name: String.t(),
          _authorizationRequired: Fhir.Element.t(),
          _authorizationUrl: Fhir.Element.t(),
          _description: Fhir.Element.t(),
          _excluded: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          authorizationSupporting: [Fhir.CodeableConcept.t()],
          benefit: [Fhir.CoverageEligibilityResponseBenefit.t()],
          category: Fhir.CodeableConcept.t(),
          extension: [Fhir.Extension.t()],
          modifier: [Fhir.CodeableConcept.t()],
          modifierExtension: [Fhir.Extension.t()],
          network: Fhir.CodeableConcept.t(),
          productOrService: Fhir.CodeableConcept.t(),
          provider: Fhir.Reference.t(),
          term: Fhir.CodeableConcept.t(),
          unit: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :authorizationRequired,
      :authorizationUrl,
      :description,
      :excluded,
      :id,
      :name
    ])
    |> cast_embed(:_authorizationRequired, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_authorizationUrl, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_excluded, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:authorizationSupporting, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:benefit, with: &Fhir.CoverageEligibilityResponseBenefit.changeset/2)
    |> cast_embed(:category, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifier, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:network, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:productOrService, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:provider, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:term, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:unit, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_inclusion(:authorizationRequired, [true, false])
    |> validate_format(:authorizationUrl, ~r/^\S*$/)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:excluded, [true, false])
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:name, ~r/^^[\s\S]+$$/)
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
