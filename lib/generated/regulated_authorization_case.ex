defmodule Fhir.Generated.RegulatedAuthorizationCase do
  use TypedStruct

  typedstruct do
    field :_dateDateTime, Fhir.Generated.Element
        field :application, [Fhir.Generated.RegulatedAuthorizationCase], default: []
        field :dateDateTime, :string
        field :datePeriod, Fhir.Generated.Period
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, Fhir.Generated.Identifier
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :status, Fhir.Generated.CodeableConcept
        field :type, Fhir.Generated.CodeableConcept
  end
end
