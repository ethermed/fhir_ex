defmodule Fhir.Timing do
  use TypedStruct

  typedstruct do
    field(:_event, [Fhir.Element], default: [])
    field(:code, Fhir.CodeableConcept)
    field(:event, [:datetime], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:repeat, Fhir.TimingRepeat)
  end
end
