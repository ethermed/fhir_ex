defmodule Fhir.Generated.DeviceDefinitionChargeItem do
  use TypedStruct

  typedstruct do
    field :chargeItemCode, Fhir.Generated.CodeableReference
        field :count, Fhir.Generated.Quantity
        field :effectivePeriod, Fhir.Generated.Period
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :useContext, [Fhir.Generated.UsageContext], default: []
  end
end
