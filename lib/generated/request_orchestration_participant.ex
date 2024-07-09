defmodule Fhir.RequestOrchestrationParticipant do
  @moduledoc """
  A set of related requests that can be used to capture intended activities that have inter-dependencies such as "give this medication after that one".
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:actorCanonical, :string)
    field(:id, :string)
    field(:type, :string)
    field(:typeCanonical, :string)
    embeds_one(:_actorCanonical, Fhir.Element)
    embeds_one(:_type, Fhir.Element)
    embeds_one(:actorReference, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:function, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:role, Fhir.CodeableConcept)
    embeds_one(:typeReference, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          actorCanonical: String.t(),
          id: String.t(),
          type: String.t(),
          typeCanonical: String.t(),
          _actorCanonical: Fhir.Element.t(),
          _type: Fhir.Element.t(),
          actorReference: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          function: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()],
          role: Fhir.CodeableConcept.t(),
          typeReference: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:actorCanonical, :id, :type, :typeCanonical])
    |> cast_embed(:_actorCanonical, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_type, with: &Fhir.Element.changeset/2)
    |> cast_embed(:actorReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:function, with: &Fhir.CodeableConcept.changeset/2)
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
