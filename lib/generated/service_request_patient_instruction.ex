defmodule Fhir.ServiceRequestPatientInstruction do
  @moduledoc """
  A record of a request for service such as diagnostic investigations, treatments, or operations to be performed.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:instructionMarkdown, :string)
    embeds_one(:_instructionMarkdown, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:instructionReference, Fhir.Reference)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          instructionMarkdown: String.t(),
          _instructionMarkdown: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          instructionReference: Fhir.Reference.t(),
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :instructionMarkdown])
    |> cast_embed(:_instructionMarkdown, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:instructionReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
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
