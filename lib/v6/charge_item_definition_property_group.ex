defmodule Fhir.v6().ChargeItemDefinitionPropertyGroup do
  use TypedStruct

  typedstruct do
    field(:applicability, [Fhir.v6().ChargeItemDefinitionApplicability], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:priceComponent, [Fhir.v6().MonetaryComponent], default: [])
  end
end
