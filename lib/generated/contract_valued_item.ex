defmodule Fhir.ContractValuedItem do
  @moduledoc """
  Legally enforceable, formally recorded unilateral or bilateral directive i.e., a policy or agreement.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:effectiveTime, :string)
    field(:factor, :float)
    field(:id, :string)
    field(:linkId, :string)
    field(:payment, :string)
    field(:paymentDate, :string)
    field(:points, :float)
    field(:securityLabelNumber, :string)
    embeds_one(:_effectiveTime, Fhir.Element)
    embeds_one(:_factor, Fhir.Element)
    embeds_many(:_linkId, Fhir.Element)
    embeds_one(:_payment, Fhir.Element)
    embeds_one(:_paymentDate, Fhir.Element)
    embeds_one(:_points, Fhir.Element)
    embeds_many(:_securityLabelNumber, Fhir.Element)
    embeds_one(:entityCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:entityReference, Fhir.Reference)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:identifier, Fhir.Identifier)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:net, Fhir.Money)
    embeds_one(:quantity, Fhir.Quantity)
    embeds_one(:recipient, Fhir.Reference)
    embeds_one(:responsible, Fhir.Reference)
    embeds_one(:unitPrice, Fhir.Money)
  end

  @type t :: %__MODULE__{
          effectiveTime: String.t(),
          factor: float(),
          id: String.t(),
          linkId: String.t(),
          payment: String.t(),
          paymentDate: String.t(),
          points: float(),
          securityLabelNumber: String.t(),
          _effectiveTime: Fhir.Element.t(),
          _factor: Fhir.Element.t(),
          _linkId: [Fhir.Element.t()],
          _payment: Fhir.Element.t(),
          _paymentDate: Fhir.Element.t(),
          _points: Fhir.Element.t(),
          _securityLabelNumber: [Fhir.Element.t()],
          entityCodeableConcept: Fhir.CodeableConcept.t(),
          entityReference: Fhir.Reference.t(),
          extension: [Fhir.Extension.t()],
          identifier: Fhir.Identifier.t(),
          modifierExtension: [Fhir.Extension.t()],
          net: Fhir.Money.t(),
          quantity: Fhir.Quantity.t(),
          recipient: Fhir.Reference.t(),
          responsible: Fhir.Reference.t(),
          unitPrice: Fhir.Money.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [
      :effectiveTime,
      :factor,
      :id,
      :linkId,
      :payment,
      :paymentDate,
      :points,
      :securityLabelNumber
    ])
    |> cast_embed(:_effectiveTime, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_factor, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_linkId, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_payment, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_paymentDate, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_points, with: &Fhir.Element.changeset/2)
    |> cast_embed(:_securityLabelNumber, with: &Fhir.Element.changeset/2)
    |> cast_embed(:entityCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:entityReference, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:identifier, with: &Fhir.Identifier.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:net, with: &Fhir.Money.changeset/2)
    |> cast_embed(:quantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:recipient, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:responsible, with: &Fhir.Reference.changeset/2)
    |> cast_embed(:unitPrice, with: &Fhir.Money.changeset/2)
    |> validate_format(
      :effectiveTime,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:payment, ~r/^^[\s\S]+$$/)
    |> validate_format(
      :paymentDate,
      ~r/^([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3]):[0-5][0-9]:([0-5][0-9]|60)(\.[0-9]{1,9})?)?)?(Z|(\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00)?)?)?$/
    )
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
