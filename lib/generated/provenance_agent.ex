defmodule Fhir.ProvenanceAgent do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:onBehalfOf, Fhir.Reference)
    field(:role, [Fhir.CodeableConcept], default: [])
    field(:type, Fhir.CodeableConcept)
    field(:who, Fhir.Reference)
  end
end
