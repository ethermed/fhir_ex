defmodule Fhir.Generated.ImplementationGuideManifest do
  use TypedStruct

  typedstruct do
    field :_image, [Fhir.Generated.Element], default: []
        field :_other, [Fhir.Generated.Element], default: []
        field :_rendering, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :image, [:string], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :other, [:string], default: []
        field :page, [Fhir.Generated.ImplementationGuidePage1], default: []
        field :rendering, :string
        field :resource, [Fhir.Generated.ImplementationGuideResource1], default: []
  end
end
