defmodule Fhir.v6().AccountBalance do
  use TypedStruct

  typedstruct do
    field(:_estimate, Fhir.v6().Element)
    field(:aggregate, Fhir.v6().CodeableConcept)
    field(:amount, Fhir.v6().Money)
    field(:estimate, :boolean)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:term, Fhir.v6().CodeableConcept)
  end
end
