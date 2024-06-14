defmodule Fhir.v6().IngredientManufacturer do
  use TypedStruct

  typedstruct do
    field(:_role, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:manufacturer, Fhir.v6().Reference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:role, :string)
  end
end
