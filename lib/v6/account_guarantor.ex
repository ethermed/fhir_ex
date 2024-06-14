defmodule Fhir.v6().AccountGuarantor do
  use TypedStruct

  typedstruct do
    field(:_onHold, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:onHold, :boolean)
    field(:party, Fhir.v6().Reference)
    field(:period, Fhir.v6().Period)
  end
end
