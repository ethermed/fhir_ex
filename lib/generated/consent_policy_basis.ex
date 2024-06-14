defmodule Fhir.ConsentPolicyBasis do
  use TypedStruct

  typedstruct do
    field(:_url, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:reference, Fhir.Reference)
    field(:url, :string)
  end
end
