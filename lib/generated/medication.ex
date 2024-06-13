defmodule Fhir.Generated.Medication do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :batch, Fhir.Generated.MedicationBatch
        field :code, Fhir.Generated.CodeableConcept
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :definition, Fhir.Generated.Reference
        field :doseForm, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :ingredient, [Fhir.Generated.MedicationIngredient], default: []
        field :language, :string
        field :marketingAuthorizationHolder, Fhir.Generated.Reference
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :resourceType, :string, default: "Medication"
        field :status, :string
        field :text, Fhir.Generated.Narrative
        field :totalVolume, Fhir.Generated.Quantity
  end
end
