defmodule Fhir.ImplementationGuideGlobal do
  use TypedStruct

  typedstruct do
    field(:_type, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:profile, :string)
    field(:type, :string)
  end
end
