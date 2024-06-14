defmodule Fhir.v6().Timing do
  use TypedStruct

  typedstruct do
    field(:_event, [Fhir.v6().Element], default: [])
    field(:code, Fhir.v6().CodeableConcept)
    field(:event, [:datetime], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:repeat, Fhir.v6().TimingRepeat)
  end
end
