defmodule Fhir.Generated.ProvenanceEntity do
  use TypedStruct

  typedstruct do
    field :_role, Fhir.Generated.Element
        field :agent, [Fhir.Generated.ProvenanceAgent], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :role, :string
        field :what, Fhir.Generated.Reference
  end
end
