defmodule Fhir.Generated.MedicinalProductDefinitionOperation do
  use TypedStruct

  typedstruct do
    field :confidentialityIndicator, Fhir.Generated.CodeableConcept
        field :effectiveDate, Fhir.Generated.Period
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :organization, [Fhir.Generated.Reference], default: []
        field :type, Fhir.Generated.CodeableReference
  end
end
