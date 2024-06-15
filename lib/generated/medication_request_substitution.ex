defmodule Fhir.MedicationRequestSubstitution do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_allowedBoolean, Fhir.Element
        field :allowedBoolean, :boolean
        field :allowedCodeableConcept, Fhir.CodeableConcept
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :reason, Fhir.CodeableConcept
  end
end
