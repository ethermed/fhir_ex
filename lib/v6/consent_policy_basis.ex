defmodule Fhir.v6().ConsentPolicyBasis do
  use TypedStruct

  typedstruct do
    field(:_url, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:reference, Fhir.v6().Reference)
    field(:url, :string)
  end
end
