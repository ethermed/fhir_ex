defmodule Fhir.v6().DeviceDefinitionChargeItem do
  use TypedStruct

  typedstruct do
    field(:chargeItemCode, Fhir.v6().CodeableReference)
    field(:count, Fhir.v6().Quantity)
    field(:effectivePeriod, Fhir.v6().Period)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:useContext, [Fhir.v6().UsageContext], default: [])
  end
end
