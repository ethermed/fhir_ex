defmodule Fhir.v6().CompositionAttester do
  use TypedStruct

  typedstruct do
    field(:_time, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:mode, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:party, Fhir.v6().Reference)
    field(:time, :datetime)
  end
end
