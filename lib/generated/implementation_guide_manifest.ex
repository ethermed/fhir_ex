defmodule Fhir.ImplementationGuideManifest do
  @moduledoc """
  A set of rules of how a particular interoperability or standards problem is solved - typically through the use of FHIR resources. This resource is used to gather all the parts of an implementation guide into a logical whole and to publish a computable definition of all the parts.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:image, :string)
    field(:other, :string)
    field(:rendering, :string)
    embeds_many(:_image, Fhir.Element)
    embeds_many(:_other, Fhir.Element)
    embeds_one(:_rendering, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:page, Fhir.ImplementationGuidePage1)
    embeds_many(:resource, Fhir.ImplementationGuideResource1)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          image: String.t(),
          other: String.t(),
          rendering: String.t(),
          _image: [Fhir.Element.t()],
          _other: [Fhir.Element.t()],
          _rendering: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          page: [Fhir.ImplementationGuidePage1.t()],
          resource: [Fhir.ImplementationGuideResource1.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :image, :other, :rendering])
    |> cast_embed(:_image, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_other, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_rendering, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:page, with: &Fhir.ImplementationGuidePage1.changeset/2)
    |> cast_embed(:resource, with: &Fhir.ImplementationGuideResource1.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:rendering, ~r/^\S*$/)
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
