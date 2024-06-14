defmodule Fhir.v6().PermissionJustification do
  use TypedStruct

  typedstruct do
    field(:basis, [Fhir.v6().CodeableConcept], default: [])
    field(:evidence, [Fhir.v6().Reference], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
