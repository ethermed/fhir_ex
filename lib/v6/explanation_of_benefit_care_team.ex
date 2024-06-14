defmodule Fhir.v6().ExplanationOfBenefitCareTeam do
  use TypedStruct

  typedstruct do
    field(:_responsible, Fhir.v6().Element)
    field(:_sequence, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:provider, Fhir.v6().Reference)
    field(:responsible, :boolean)
    field(:role, Fhir.v6().CodeableConcept)
    field(:sequence, :float)
    field(:specialty, Fhir.v6().CodeableConcept)
  end
end
