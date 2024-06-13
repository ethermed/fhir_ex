defmodule Fhir.Generated.NutritionProductInstance do
  use TypedStruct

  typedstruct do
    field :_expiry, Fhir.Generated.Element
        field :_lotNumber, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_useBy, Fhir.Generated.Element
        field :biologicalSourceEvent, Fhir.Generated.Identifier
        field :expiry, :datetime
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :lotNumber, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :quantity, Fhir.Generated.Quantity
        field :useBy, :datetime
  end
end
