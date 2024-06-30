defmodule Fhir.Medication do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:batch, Fhir.MedicationBatch)
    field(:code, Fhir.CodeableConcept)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:definition, Fhir.Reference)
    field(:doseForm, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:ingredient, [Fhir.MedicationIngredient], default: [])
    field(:language, :string)
    field(:marketingAuthorizationHolder, Fhir.Reference)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:resourceType, :string, default: "Medication")
    field(:status, :string)
    field(:text, Fhir.Narrative)
    field(:totalVolume, Fhir.Quantity)
  end
end
