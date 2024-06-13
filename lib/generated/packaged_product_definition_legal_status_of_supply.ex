defmodule Fhir.Generated.PackagedProductDefinitionLegalStatusOfSupply do
  use TypedStruct

  typedstruct do
    field :code, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :jurisdiction, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
