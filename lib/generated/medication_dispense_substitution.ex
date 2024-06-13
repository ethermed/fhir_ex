defmodule Fhir.Generated.MedicationDispenseSubstitution do
  use TypedStruct

  typedstruct do
    field :_wasSubstituted, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :reason, [Fhir.Generated.CodeableConcept], default: []
        field :responsibleParty, Fhir.Generated.Reference
        field :type, Fhir.Generated.CodeableConcept
        field :wasSubstituted, :boolean
  end
end
