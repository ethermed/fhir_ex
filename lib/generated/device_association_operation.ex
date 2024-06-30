defmodule Fhir.DeviceAssociationOperation do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:operator, [Fhir.Reference], default: [])
    field(:period, Fhir.Period)
    field(:status, Fhir.CodeableConcept)
  end
end
