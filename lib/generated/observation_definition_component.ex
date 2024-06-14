defmodule Fhir.ObservationDefinitionComponent do
  use TypedStruct

  typedstruct do
    field(:_permittedDataType, [Fhir.Element], default: [])
    field(:code, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:permittedDataType, [:string], default: [])
    field(:permittedUnit, [Fhir.Coding], default: [])
    field(:qualifiedValue, [Fhir.ObservationDefinitionQualifiedValue], default: [])
  end
end
