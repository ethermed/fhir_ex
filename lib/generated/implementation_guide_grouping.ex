defmodule Fhir.ImplementationGuideGrouping do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.Element)
    field(:_name, Fhir.Element)
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
  end
end
