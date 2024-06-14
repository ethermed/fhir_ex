defmodule Fhir.v6().ClaimBodySite do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:site, [Fhir.v6().CodeableReference], default: [])
    field(:subSite, [Fhir.v6().CodeableConcept], default: [])
  end
end
