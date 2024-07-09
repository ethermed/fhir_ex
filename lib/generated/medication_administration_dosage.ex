defmodule Fhir.MedicationAdministrationDosage do
  @moduledoc """
  Describes the event of a patient consuming or otherwise being administered a medication.  This may be as simple as swallowing a tablet or it may be a long running infusion.  Related resources tie this event to the authorizing prescription, and the specific encounter between patient and health care practitioner.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    field(:text, :string)
    embeds_one(:_text, Fhir.Element)
    embeds_one(:dose, Fhir.Quantity)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:method, Fhir.CodeableConcept)
    embeds_many(:modifierExtension, Fhir.Extension)
    embeds_one(:rateQuantity, Fhir.Quantity)
    embeds_one(:rateRatio, Fhir.Ratio)
    embeds_one(:route, Fhir.CodeableConcept)
    embeds_one(:site, Fhir.CodeableConcept)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          text: String.t(),
          _text: Fhir.Element.t(),
          dose: Fhir.Quantity.t(),
          extension: [Fhir.Extension.t()],
          method: Fhir.CodeableConcept.t(),
          modifierExtension: [Fhir.Extension.t()],
          rateQuantity: Fhir.Quantity.t(),
          rateRatio: Fhir.Ratio.t(),
          route: Fhir.CodeableConcept.t(),
          site: Fhir.CodeableConcept.t()
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id, :text])
    |> cast_embed(:_text, with: &Fhir.Element.changeset/2)
    |> cast_embed(:dose, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:method, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:modifierExtension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:rateQuantity, with: &Fhir.Quantity.changeset/2)
    |> cast_embed(:rateRatio, with: &Fhir.Ratio.changeset/2)
    |> cast_embed(:route, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:site, with: &Fhir.CodeableConcept.changeset/2)
    |> validate_format(:id, ~r/^^[\s\S]+$$/)
    |> validate_format(:text, ~r/^^[\s\S]+$$/)
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
