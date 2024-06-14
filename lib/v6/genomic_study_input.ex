defmodule Fhir.v6().GenomicStudyInput do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:file, Fhir.v6().Reference)
    field(:generatedByIdentifier, Fhir.v6().Identifier)
    field(:generatedByReference, Fhir.v6().Reference)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, Fhir.v6().CodeableConcept)
  end
end
