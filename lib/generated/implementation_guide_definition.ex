defmodule Fhir.Generated.ImplementationGuideDefinition do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :grouping, [Fhir.Generated.ImplementationGuideGrouping], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :page, Fhir.Generated.ImplementationGuidePage
        field :parameter, [Fhir.Generated.ImplementationGuideParameter], default: []
        field :resource, [Fhir.Generated.ImplementationGuideResource], default: []
        field :template, [Fhir.Generated.ImplementationGuideTemplate], default: []
  end
end
