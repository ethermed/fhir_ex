defmodule Fhir.Generated.ChargeItemDefinitionPropertyGroup do
  use TypedStruct

  typedstruct do
    field :applicability, [Fhir.Generated.ChargeItemDefinitionApplicability], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :priceComponent, [Fhir.Generated.MonetaryComponent], default: []
  end
end
