defmodule Fhir.v6().PermissionRule do
  use TypedStruct

  typedstruct do
    field(:_type, Fhir.v6().Element)
    field(:activity, [Fhir.v6().PermissionActivity], default: [])
    field(:data, [Fhir.v6().PermissionData], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:limit, [Fhir.v6().CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, :string)
  end
end
