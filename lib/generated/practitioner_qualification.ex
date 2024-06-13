defmodule Fhir.Generated.PractitionerQualification do
  use TypedStruct

  typedstruct do
    field :code, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :issuer, Fhir.Generated.Reference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :period, Fhir.Generated.Period
  end
end
