defmodule Fhir.Generated.DocumentReferenceContent do
  use TypedStruct

  typedstruct do
    field :attachment, Fhir.Generated.Attachment
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :profile, [Fhir.Generated.DocumentReferenceProfile], default: []
  end
end
