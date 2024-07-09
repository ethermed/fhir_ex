defmodule Fhir.PlanDefinitionOption do
  @moduledoc """
  This resource allows for the definition of various types of plans as a sharable, consumable, and executable artifact. The resource is general enough to support the description of a broad range of clinical and non-clinical artifacts such as clinical decision support rules, order sets, protocols, and drug quality specifications.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:type, :string)
    field(:typeCanonical, :string)
    embeds_one(:_type, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:role, Fhir.CodeableConcept)
    embeds_one(:typeReference, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          type: String.t(),
          typeCanonical: String.t(),
          _type: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          role: Fhir.CodeableConcept.t(),
          typeReference: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :type, :typeCanonical])
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:role, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:typeReference, with: &Fhir.Reference.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:type, ~r/^[^\s]+( [^\s]+)*$/)
    |> validate_format(:typeCanonical, ~r/^\S*$/)
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
