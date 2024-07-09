defmodule Fhir.AdministrableProductDefinition do
  @moduledoc """
  A medicinal product in the final form which is suitable for administering to a patient (after any mixing of multiple components, dissolution etc. has been performed).
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
    field(:resourceType, :string, default: "AdministrableProductDefinition")
    field(:status, :string)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_implicitRules, Fhir.Element)
    embeds_one(:_language, Fhir.Element)
    embeds_one(:_status, Fhir.Element)
    embeds_one(:administrableDoseForm, Fhir.CodeableConcept)
    embeds_many(:contained, Fhir.ResourceList)
    embeds_one(:device, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:formOf, Fhir.Reference)
    embeds_many(:identifier, Fhir.Identifier)
    embeds_many(:ingredient, Fhir.CodeableConcept)
    embeds_one(:meta, Fhir.Meta)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:producedFrom, Fhir.Reference)
    embeds_many(:property, Fhir.AdministrableProductDefinitionProperty)
    embeds_many(:routeOfAdministration, Fhir.AdministrableProductDefinitionRouteOfAdministration)
    embeds_one(:text, Fhir.Narrative)
    embeds_one(:unitOfPresentation, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          id: String.t(),
          implicitRules: String.t(),
          language: String.t(),
          resourceType: String.t(),
          status: String.t(),
          _description: Fhir.Element.t(),
          _implicitRules: Fhir.Element.t(),
          _language: Fhir.Element.t(),
          _status: Fhir.Element.t(),
          administrableDoseForm: Fhir.CodeableConcept.t(),
          contained: [Fhir.ResourceList.t()],
          device: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          formOf: [Fhir.Reference.t()],
          identifier: [Fhir.Identifier.t()],
          ingredient: [Fhir.CodeableConcept.t()],
          meta: Fhir.Meta.t(),
          modifierExtension: [Fhir.Extension.t()],
          producedFrom: [Fhir.Reference.t()],
          property: [Fhir.AdministrableProductDefinitionProperty.t()],
          routeOfAdministration: [Fhir.AdministrableProductDefinitionRouteOfAdministration.t()],
          text: Fhir.Narrative.t(),
          unitOfPresentation: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:description, :id, :implicitRules, :language, :resourceType, :status])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_implicitRules, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_language, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_status, with: &Fhir.Element.changeset/2)
    |> cast_embed(:administrableDoseForm, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:contained, with: &Fhir.ResourceList.changeset/2)
    |> cast_embed(:device, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:formOf, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:ingredient, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:meta, with: &Fhir.Meta.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:producedFrom, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:property, with: &Fhir.AdministrableProductDefinitionProperty.changeset/2)
    |> cast_embed(:routeOfAdministration,
      with: &Fhir.AdministrableProductDefinitionRouteOfAdministration.changeset/2
    )
    |> cast_embed(:text, with: &Fhir.Narrative.changeset/2)
    |> cast_embed(:unitOfPresentation, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:implicitRules, ~r/^\S*$/)
    |> validate_format(:language, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:status, ~r/^[^\s]+( [^\s]+)*$/)
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
