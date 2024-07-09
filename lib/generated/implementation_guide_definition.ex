defmodule Fhir.ImplementationGuideDefinition do
  @moduledoc """
  A set of rules of how a particular interoperability or standards problem is solved - typically through the use of FHIR resources. This resource is used to gather all the parts of an implementation guide into a logical whole and to publish a computable definition of all the parts.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:grouping, Fhir.ImplementationGuideGrouping)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:page, Fhir.ImplementationGuidePage)
    embeds_many(:parameter, Fhir.ImplementationGuideParameter)
    embeds_many(:resource, Fhir.ImplementationGuideResource)
    embeds_many(:template, Fhir.ImplementationGuideTemplate)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          extension: [Fhir.Extension.t()],
          grouping: [Fhir.ImplementationGuideGrouping.t()],
          modifierExtension: [Fhir.Extension.t()],
          page: Fhir.ImplementationGuidePage.t(),
          parameter: [Fhir.ImplementationGuideParameter.t()],
          resource: [Fhir.ImplementationGuideResource.t()],
          template: [Fhir.ImplementationGuideTemplate.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:grouping, with: &Fhir.ImplementationGuideGrouping.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:page, with: &Fhir.ImplementationGuidePage.changeset/2)
    |> cast_embed(:parameter, with: &Fhir.ImplementationGuideParameter.changeset/2)
    |> cast_embed(:resource, with: &Fhir.ImplementationGuideResource.changeset/2)
    |> cast_embed(:template, with: &Fhir.ImplementationGuideTemplate.changeset/2)
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
