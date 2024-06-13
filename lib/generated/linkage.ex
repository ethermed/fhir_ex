defmodule Fhir.Generated.Linkage do
  use TypedStruct

  typedstruct do
    field :_active, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :active, :boolean
        field :author, Fhir.Generated.Reference
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :implicitRules, :string
        field :item, [Fhir.Generated.LinkageItem], default: []
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :resourceType, :string, default: "Linkage"
        field :text, Fhir.Generated.Narrative
  end
end
