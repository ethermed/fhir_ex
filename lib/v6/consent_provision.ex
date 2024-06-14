defmodule Fhir.v6().ConsentProvision do
  use TypedStruct

  typedstruct do
    field(:action, [Fhir.v6().CodeableConcept], default: [])
    field(:actor, [Fhir.v6().ConsentActor], default: [])
    field(:code, [Fhir.v6().CodeableConcept], default: [])
    field(:data, [Fhir.v6().ConsentData], default: [])
    field(:dataPeriod, Fhir.v6().Period)
    field(:documentType, [Fhir.v6().Coding], default: [])
    field(:expression, Fhir.v6().Expression)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:period, Fhir.v6().Period)
    field(:provision, [Fhir.v6().ConsentProvision], default: [])
    field(:purpose, [Fhir.v6().Coding], default: [])
    field(:resourceType, [Fhir.v6().Coding], default: [])
    field(:securityLabel, [Fhir.v6().Coding], default: [])
  end
end
