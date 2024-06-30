defmodule Fhir.RegulatedAuthorizationCase do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_dateDateTime, Fhir.Element)
    field(:application, [Fhir.RegulatedAuthorizationCase], default: [])
    field(:dateDateTime, :string)
    field(:datePeriod, Fhir.Period)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, Fhir.Identifier)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:status, Fhir.CodeableConcept)
    field(:type, Fhir.CodeableConcept)
  end
end
