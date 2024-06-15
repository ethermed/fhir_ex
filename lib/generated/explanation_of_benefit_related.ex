defmodule Fhir.ExplanationOfBenefitRelated do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :claim, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :reference, Fhir.Identifier
        field :relationship, Fhir.CodeableConcept
  end
end
