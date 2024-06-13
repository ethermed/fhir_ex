defmodule Fhir.Generated.IngredientManufacturer do
  use TypedStruct

  typedstruct do
    field :_role, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :manufacturer, Fhir.Generated.Reference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :role, :string
  end
end
