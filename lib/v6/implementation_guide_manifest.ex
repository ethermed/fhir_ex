defmodule Fhir.v6().ImplementationGuideManifest do
  use TypedStruct

  typedstruct do
    field(:_image, [Fhir.v6().Element], default: [])
    field(:_other, [Fhir.v6().Element], default: [])
    field(:_rendering, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:image, [:string], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:other, [:string], default: [])
    field(:page, [Fhir.v6().ImplementationGuidePage1], default: [])
    field(:rendering, :string)
    field(:resource, [Fhir.v6().ImplementationGuideResource1], default: [])
  end
end
