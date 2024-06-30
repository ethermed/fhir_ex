defmodule Fhir.AccountGuarantor do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_onHold, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:onHold, :boolean)
    field(:party, Fhir.Reference)
    field(:period, Fhir.Period)
  end
end
