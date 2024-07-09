defmodule Fhir.GraphDefinitionLink do
  @moduledoc """
  A formal computable definition of a graph of resources - that is, a coherent set of resources that form a graph by following references. The Graph Definition resource defines a set and makes rules about the set.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:description, :string)
    field(:id, :string)
    field(:max, :string)
    field(:min, :float)
    field(:params, :string)
    field(:path, :string)
    field(:sliceName, :string)
    field(:sourceId, :string)
    field(:targetId, :string)
    embeds_one(:_description, Fhir.Element)
    embeds_one(:_max, Fhir.Element)
    embeds_one(:_min, Fhir.Element)
    embeds_one(:_params, Fhir.Element)
    embeds_one(:_path, Fhir.Element)
    embeds_one(:_sliceName, Fhir.Element)
    embeds_one(:_sourceId, Fhir.Element)
    embeds_one(:_targetId, Fhir.Element)
    embeds_many(:compartment, Fhir.GraphDefinitionCompartment)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          description: String.t(),
          id: String.t(),
          max: String.t(),
          min: float(),
          params: String.t(),
          path: String.t(),
          sliceName: String.t(),
          sourceId: String.t(),
          targetId: String.t(),
          _description: Fhir.Element.t(),
          _max: Fhir.Element.t(),
          _min: Fhir.Element.t(),
          _params: Fhir.Element.t(),
          _path: Fhir.Element.t(),
          _sliceName: Fhir.Element.t(),
          _sourceId: Fhir.Element.t(),
          _targetId: Fhir.Element.t(),
          compartment: [Fhir.GraphDefinitionCompartment.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :description,
      :id,
      :max,
      :min,
      :params,
      :path,
      :sliceName,
      :sourceId,
      :targetId
    ])
    |> cast_embed(:_description, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_max, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_min, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_params, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_path, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sliceName, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sourceId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_targetId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:compartment, with: &Fhir.GraphDefinitionCompartment.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:description, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:max, ~r/^^[\s\S]+$$/)
    |> validate_format(:min, ~r/^[0]|[-+]?[1-9][0-9]*$/)
    |> validate_format(:params, ~r/^^[\s\S]+$$/)
    |> validate_format(:path, ~r/^^[\s\S]+$$/)
    |> validate_format(:sliceName, ~r/^^[\s\S]+$$/)
    |> validate_format(:sourceId, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
    |> validate_format(:targetId, ~r/^[A-Za-z0-9\-\.]{1,64}$/)
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
