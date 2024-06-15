defmodule Fhir.Linkage do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_active, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :active, :boolean
        field :author, Fhir.Reference
        field :contained, [Fhir.ResourceList], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :implicitRules, :string
        field :item, [Fhir.LinkageItem], default: []
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :resourceType, :string, default: "Linkage"
        field :text, Fhir.Narrative
  end
end
