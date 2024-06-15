defmodule Fhir.DeviceDefinitionChargeItem do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :chargeItemCode, Fhir.CodeableReference
        field :count, Fhir.Quantity
        field :effectivePeriod, Fhir.Period
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :useContext, [Fhir.UsageContext], default: []
  end
end
