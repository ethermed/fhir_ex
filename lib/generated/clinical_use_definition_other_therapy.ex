defmodule Fhir.ClinicalUseDefinitionOtherTherapy do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:relationshipType, Fhir.CodeableConcept)
    field(:treatment, Fhir.CodeableReference)
  end
end
