defmodule Fhir.TestReportAssert do
  @moduledoc """
  A summary of information based on the results of executing a TestScript.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:detail, :string)
    field(:id, :string)
    field(:message, :string)
    field(:result, :string)
    embeds_one(:_detail, Fhir.Element)
    embeds_one(:_message, Fhir.Element)
    embeds_one(:_result, Fhir.Element)
    embeds_many(:extension, Fhir.Extension)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_many(:requirement, Fhir.TestReportRequirement)
  end

  @type t :: %__MODULE__{
          detail: String.t(),
          id: String.t(),
          message: String.t(),
          result: String.t(),
          _detail: Fhir.Element.t(),
          _message: Fhir.Element.t(),
          _result: Fhir.Element.t(),
          extension: [Fhir.Extension.t()],
          modifierExtension: [Fhir.Extension.t()],
          requirement: [Fhir.TestReportRequirement.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:detail, :id, :message, :result])
    |> cast_embed(:_detail, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_message, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_result, with: &Fhir.Element.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:requirement, with: &Fhir.TestReportRequirement.changeset/2)
    |> validate_format(:detail, ~r/^^[\s\S]+$$/)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:message, ~r/^^[\s\S]+$$/)
    |> validate_format(:result, ~r/^[^\s]+( [^\s]+)*$/)
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
