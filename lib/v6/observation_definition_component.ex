defmodule Fhir.v6().ObservationDefinitionComponent do
  use TypedStruct

  typedstruct do
    field(:_permittedDataType, [Fhir.v6().Element], default: [])
    field(:code, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:permittedDataType, [:string], default: [])
    field(:permittedUnit, [Fhir.v6().Coding], default: [])
    field(:qualifiedValue, [Fhir.v6().ObservationDefinitionQualifiedValue], default: [])
  end
end
