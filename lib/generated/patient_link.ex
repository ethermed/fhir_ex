defmodule Fhir.Generated.PatientLink do
  use TypedStruct

  typedstruct do
    field :_type, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :other, Fhir.Generated.Reference
        field :type, :string
  end
end
