defmodule Fhir.DocumentReferenceContent do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:attachment, Fhir.Attachment)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:profile, [Fhir.DocumentReferenceProfile], default: [])
  end
end
