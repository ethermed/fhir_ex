defmodule Fhir.Generated.MedicinalProductDefinitionContact do
  use TypedStruct

  typedstruct do
    field :contact, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
