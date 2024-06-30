defmodule Fhir.PermissionActivity do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:action, [Fhir.CodeableConcept], default: [])
    field(:actor, [Fhir.Reference], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:purpose, [Fhir.CodeableConcept], default: [])
  end
end
