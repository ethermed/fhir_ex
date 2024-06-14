defmodule Fhir.ImplementationGuideManifest do
  use TypedStruct

  typedstruct do
    field(:_image, [Fhir.Element], default: [])
    field(:_other, [Fhir.Element], default: [])
    field(:_rendering, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:image, [:string], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:other, [:string], default: [])
    field(:page, [Fhir.ImplementationGuidePage1], default: [])
    field(:rendering, :string)
    field(:resource, [Fhir.ImplementationGuideResource1], default: [])
  end
end
