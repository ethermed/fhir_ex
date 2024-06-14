defmodule Fhir.v6().ImplementationGuideDefinition do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:grouping, [Fhir.v6().ImplementationGuideGrouping], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:page, Fhir.v6().ImplementationGuidePage)
    field(:parameter, [Fhir.v6().ImplementationGuideParameter], default: [])
    field(:resource, [Fhir.v6().ImplementationGuideResource], default: [])
    field(:template, [Fhir.v6().ImplementationGuideTemplate], default: [])
  end
end
