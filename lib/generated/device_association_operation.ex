defmodule Fhir.Generated.DeviceAssociationOperation do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :operator, [Fhir.Generated.Reference], default: []
        field :period, Fhir.Generated.Period
        field :status, Fhir.Generated.CodeableConcept
  end
end
