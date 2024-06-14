defmodule Fhir.v6().ProvenanceAgent do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:onBehalfOf, Fhir.v6().Reference)
    field(:role, [Fhir.v6().CodeableConcept], default: [])
    field(:type, Fhir.v6().CodeableConcept)
    field(:who, Fhir.v6().Reference)
  end
end
