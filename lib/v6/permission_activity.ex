defmodule Fhir.v6().PermissionActivity do
  use TypedStruct

  typedstruct do
    field(:action, [Fhir.v6().CodeableConcept], default: [])
    field(:actor, [Fhir.v6().Reference], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:purpose, [Fhir.v6().CodeableConcept], default: [])
  end
end
