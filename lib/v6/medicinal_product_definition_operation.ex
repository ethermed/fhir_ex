defmodule Fhir.v6().MedicinalProductDefinitionOperation do
  use TypedStruct

  typedstruct do
    field(:confidentialityIndicator, Fhir.v6().CodeableConcept)
    field(:effectiveDate, Fhir.v6().Period)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:organization, [Fhir.v6().Reference], default: [])
    field(:type, Fhir.v6().CodeableReference)
  end
end
