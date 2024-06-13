defmodule Fhir.Generated.MedicinalProductDefinitionUsage do
  use TypedStruct

  typedstruct do
    field :country, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :jurisdiction, Fhir.Generated.CodeableConcept
        field :language, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
