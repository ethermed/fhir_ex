defmodule Fhir.ImplementationGuideDefinition do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :extension, [Fhir.Extension], default: []
        field :grouping, [Fhir.ImplementationGuideGrouping], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :page, Fhir.ImplementationGuidePage
        field :parameter, [Fhir.ImplementationGuideParameter], default: []
        field :resource, [Fhir.ImplementationGuideResource], default: []
        field :template, [Fhir.ImplementationGuideTemplate], default: []
  end
end
