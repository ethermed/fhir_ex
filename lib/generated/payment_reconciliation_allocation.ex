defmodule Fhir.PaymentReconciliationAllocation do
  @moduledoc """
  This resource provides the details including amount of a payment and allocates the payment items being paid.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:date, :string)
    field(:id, :string)
    field(:targetItemPositiveInt, :float)
    field(:targetItemString, :string)
    embeds_one(:_date, Fhir.Element)
    embeds_one(:_targetItemPositiveInt, Fhir.Element)
    embeds_one(:_targetItemString, Fhir.Element)
    embeds_one(:account, Fhir.Reference)
    embeds_one(:amount, Fhir.Money)
    embeds_one(:encounter, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:identifier, Fhir.Identifier)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:payee, Fhir.Reference)
    embeds_one(:predecessor, Fhir.Identifier)
    embeds_one(:response, Fhir.Reference)
    embeds_one(:responsible, Fhir.Reference)
    embeds_one(:submitter, Fhir.Reference)
    embeds_one(:target, Fhir.Reference)
    embeds_one(:targetItemIdentifier, Fhir.Identifier)
    embeds_one(:type, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          date: String.t(),
          id: String.t(),
          targetItemPositiveInt: float(),
          targetItemString: String.t(),
          _date: Fhir.Element.t(),
          _targetItemPositiveInt: Fhir.Element.t(),
          _targetItemString: Fhir.Element.t(),
          account: Fhir.Reference.t(),
          amount: Fhir.Money.t(),
          encounter: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          identifier: Fhir.Identifier.t(),
          modifierExtension: [Fhir.Extension.t()],
          payee: Fhir.Reference.t(),
          predecessor: Fhir.Identifier.t(),
          response: Fhir.Reference.t(),
          responsible: Fhir.Reference.t(),
          submitter: Fhir.Reference.t(),
          target: Fhir.Reference.t(),
          targetItemIdentifier: Fhir.Identifier.t(),
          type: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:date, :id, :targetItemPositiveInt, :targetItemString])
    |> cast_embed(:_date, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_targetItemPositiveInt, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_targetItemString, with: &Fhir.Element.changeset/2)
    |> cast_embed(:account, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:amount, with: &Fhir.Money.changeset/2)
    |> cast_embed(:encounter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:payee, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:predecessor, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:response, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:responsible, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:submitter, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:target, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:targetItemIdentifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:type, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(
      :date,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1]))?)?$/
    )
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
