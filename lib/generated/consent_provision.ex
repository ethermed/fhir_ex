defmodule Fhir.ConsentProvision do
  use TypedStruct

  typedstruct do
    field(:action, [Fhir.CodeableConcept], default: [])
    field(:actor, [Fhir.ConsentActor], default: [])
    field(:code, [Fhir.CodeableConcept], default: [])
    field(:data, [Fhir.ConsentData], default: [])
    field(:dataPeriod, Fhir.Period)
    field(:documentType, [Fhir.Coding], default: [])
    field(:expression, Fhir.Expression)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:period, Fhir.Period)
    field(:provision, [Fhir.ConsentProvision], default: [])
    field(:purpose, [Fhir.Coding], default: [])
    field(:resourceType, [Fhir.Coding], default: [])
    field(:securityLabel, [Fhir.Coding], default: [])
  end
end
