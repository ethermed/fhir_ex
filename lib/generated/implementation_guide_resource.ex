defmodule Fhir.ImplementationGuideResource do
  @moduledoc """
  A set of rules of how a particular interoperability or standards problem is solved - typically through the use of FHIR resources. This resource is used to gather all the parts of an implementation guide into a logical whole and to publish a computable definition of all the parts.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:description, :string)
    field(:fhirVersion, :string)
    field(:groupingId, :string)
    field(:id, :string)
    field(:isExample, :boolean)
    field(:name, :string)
    field(:profile, :string)
    embeds_one(:_description, Fhir.Element)
    embeds_many(:_fhirVersion, Fhir.Element)
    embeds_one(:_groupingId, Fhir.Element)
    embeds_one(:_isExample, Fhir.Element)
    embeds_one(:_name, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:reference, Fhir.Reference)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          fhirVersion: String.t(),
          groupingId: String.t(),
          id: String.t(),
          isExample: boolean(),
          name: String.t(),
          profile: String.t(),
          _description: Fhir.Element.t(),
          _fhirVersion: [Fhir.Element.t()],
          _groupingId: Fhir.Element.t(),
          _isExample: Fhir.Element.t(),
          _name: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          reference: Fhir.Reference.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:description, :fhirVersion, :groupingId, :id, :isExample, :name, :profile])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_fhirVersion, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_groupingId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_isExample, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_name, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:reference, with: &Fhir.Reference.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:groupingId, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:isExample, [true, false])
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
