defmodule Fhir.AdverseEventSuspectEntity do
  @moduledoc """
  An event (i.e. any change to current patient status) that may be related to unintended effects on a patient or research participant. The unintended effects may require additional monitoring, treatment, hospitalization, or may result in death. The AdverseEvent resource also extends to potential or avoided events that could have had such effects. There are two major domains where the AdverseEvent resource is expected to be used. One is in clinical care reported adverse events and the other is in reporting adverse events in clinical  research trial management. Adverse events can be reported by healthcare providers, patients, caregivers or by medical products manufacturers. Given the differences between these two concepts, we recommend consulting the domain specific implementation guides when implementing the AdverseEvent Resource. The implementation guides include specific extensions, value sets and constraints.
  """
  use Ecto.Schema
  import Ecto.Changeset
  @derive Jason.Encoder

  @primary_key false
  embedded_schema do
    field(:id, :string)
    embeds_one(:causality, Fhir.AdverseEventCausality)
    embeds_many(:extension, Fhir.Extension)
    embeds_one(:instanceCodeableConcept, Fhir.CodeableConcept)
    embeds_one(:instanceReference, Fhir.Reference)
    embeds_many(:modifierExtension, Fhir.Extension)
  end

  @type t :: %__MODULE__{
          id: String.t(),
          causality: Fhir.AdverseEventCausality.t(),
          extension: [Fhir.Extension.t()],
          instanceCodeableConcept: Fhir.CodeableConcept.t(),
          instanceReference: Fhir.Reference.t(),
          modifierExtension: [Fhir.Extension.t()]
        }

  def changeset(schema, params) do
    schema
    |> cast(params, [:id])
    |> cast_embed(:causality, with: &Fhir.AdverseEventCausality.changeset/2)
    |> cast_embed(:extension, with: &Fhir.Extension.changeset/2)
    |> cast_embed(:instanceCodeableConcept, with: &Fhir.CodeableConcept.changeset/2)
    |> cast_embed(:instanceReference, with: &Fhir.Reference.changeset/2)
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
