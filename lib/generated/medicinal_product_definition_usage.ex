defmodule Fhir.MedicinalProductDefinitionUsage do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :country, Fhir.CodeableConcept
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :jurisdiction, Fhir.CodeableConcept
        field :language, Fhir.CodeableConcept
        field :modifierExtension, [Fhir.Extension], default: []
  end
end
