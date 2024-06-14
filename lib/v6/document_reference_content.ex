defmodule Fhir.v6().DocumentReferenceContent do
  use TypedStruct

  typedstruct do
    field(:attachment, Fhir.v6().Attachment)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:profile, [Fhir.v6().DocumentReferenceProfile], default: [])
  end
end
