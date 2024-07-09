defmodule Fhir.PractitionerCommunication do
  @moduledoc """
  A person who is directly or indirectly involved in the provisioning of healthcare or related services.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:preferred, :boolean)
    embeds_one(:_preferred, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:language, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          preferred: boolean(),
          _preferred: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          language: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :preferred])
    |> cast_embed(:_preferred, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:language, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:preferred, [true, false])
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
