defmodule Fhir.PractitionerQualification do
  use TypedStruct

  typedstruct do
    field(:code, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:issuer, Fhir.Reference)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:period, Fhir.Period)
  end
end
