defmodule Fhir.ClaimInsurance do
  @moduledoc """
  A provider issued list of professional services and products which have been provided, or are to be provided, to a patient which is sent to an insurer for reimbursement.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:businessArrangement, :string)
    field(:focal, :boolean)
    field(:id, :string)
    field(:preAuthRef, :string)
    field(:sequence, :float)
    embeds_one(:_businessArrangement, Fhir.Element)
    embeds_one(:_focal, Fhir.Element)
    embeds_many(:_preAuthRef, Fhir.Element)
    embeds_one(:_sequence, Fhir.Element)
    embeds_one(:claimResponse, Fhir.Reference)
    embeds_one(:coverage, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:identifier, Fhir.Identifier)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          businessArrangement: String.t(),
          focal: boolean(),
          id: String.t(),
          preAuthRef: String.t(),
          sequence: float(),
          _businessArrangement: Fhir.Element.t(),
          _focal: Fhir.Element.t(),
          _preAuthRef: [Fhir.Element.t()],
          _sequence: Fhir.Element.t(),
          claimResponse: Fhir.Reference.t(),
          coverage: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          identifier: Fhir.Identifier.t(),
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:businessArrangement, :focal, :id, :preAuthRef, :sequence])
    |> cast_embed(:_businessArrangement, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_focal, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_preAuthRef, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_sequence, with: &Fhir.Element.changeset/2)
    |> cast_embed(:claimResponse, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:coverage, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> validate_format(:businessArrangement, ~r/^^[\s\S]+$$/)
    |> validate_inclusion(:focal, [true, false])
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
