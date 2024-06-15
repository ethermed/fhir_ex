defmodule Fhir.PlanDefinitionOption do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_type, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :role, Fhir.CodeableConcept
        field :type, :string
        field :typeCanonical, :string
        field :typeReference, Fhir.Reference
  end
end
