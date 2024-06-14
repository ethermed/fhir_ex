defmodule Fhir.v6().SubstanceDefinitionOfficial do
  use TypedStruct

  typedstruct do
    field(:_date, Fhir.v6().Element)
    field(:authority, Fhir.v6().CodeableConcept)
    field(:date, :datetime)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:status, Fhir.v6().CodeableConcept)
  end
end
