defmodule Fhir.ClaimCareTeam do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_responsible, Fhir.Element)
    field(:_sequence, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:provider, Fhir.Reference)
    field(:responsible, :boolean)
    field(:role, Fhir.CodeableConcept)
    field(:sequence, :float)
    field(:specialty, Fhir.CodeableConcept)
  end
end
