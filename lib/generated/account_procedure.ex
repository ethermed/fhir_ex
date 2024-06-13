defmodule Fhir.Generated.AccountProcedure do
  use TypedStruct

  typedstruct do
    field :_dateOfService, Fhir.Generated.Element
        field :_sequence, Fhir.Generated.Element
        field :code, Fhir.Generated.CodeableReference
        field :dateOfService, :datetime
        field :device, [Fhir.Generated.Reference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :packageCode, [Fhir.Generated.CodeableConcept], default: []
        field :sequence, :float
        field :type, [Fhir.Generated.CodeableConcept], default: []
  end
end
