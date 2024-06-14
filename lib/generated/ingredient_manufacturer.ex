defmodule Fhir.IngredientManufacturer do
  use TypedStruct

  typedstruct do
    field(:_role, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:manufacturer, Fhir.Reference)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:role, :string)
  end
end
