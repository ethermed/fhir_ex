defmodule Fhir.ChargeItemDefinitionPropertyGroup do
  use TypedStruct

  typedstruct do
    field(:applicability, [Fhir.ChargeItemDefinitionApplicability], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:priceComponent, [Fhir.MonetaryComponent], default: [])
  end
end