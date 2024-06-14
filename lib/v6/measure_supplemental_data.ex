defmodule Fhir.v6().MeasureSupplementalData do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_linkId, Fhir.v6().Element)
    field(:code, Fhir.v6().CodeableConcept)
    field(:criteria, Fhir.v6().Expression)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:linkId, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:usage, [Fhir.v6().CodeableConcept], default: [])
  end
end
