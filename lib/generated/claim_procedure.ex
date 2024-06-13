defmodule Fhir.Generated.ClaimProcedure do
  use TypedStruct

  typedstruct do
    field :_date, Fhir.Generated.Element
        field :_sequence, Fhir.Generated.Element
        field :date, :datetime
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :procedureCodeableConcept, Fhir.Generated.CodeableConcept
        field :procedureReference, Fhir.Generated.Reference
        field :sequence, :float
        field :type, [Fhir.Generated.CodeableConcept], default: []
        field :udi, [Fhir.Generated.Reference], default: []
  end
end
