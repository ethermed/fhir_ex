defmodule Fhir.ContractSecurityLabel do
  @moduledoc """
  Legally enforceable, formally recorded unilateral or bilateral directive i.e., a policy or agreement.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:number, :string)
    embeds_many(:_number, Fhir.Element)
    embeds_many(:category, Fhir.Coding)
    embeds_one(:classification, Fhir.Coding)
    embeds_many(:control, Fhir.Coding)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          number: String.t(),
          _number: [Fhir.Element.t()],
          category: [Fhir.Coding.t()],
          classification: Fhir.Coding.t(),
          control: [Fhir.Coding.t()],
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :number])
    |> cast_embed(:_number, with: &Fhir.Element.changeset/2)
    |> cast_embed(:category, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:classification, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:control, with: &Fhir.Coding.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
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
