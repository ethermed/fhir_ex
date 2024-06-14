defmodule Fhir.SubstanceDefinitionOfficial do
  use TypedStruct

  typedstruct do
    field(:_date, Fhir.Element)
    field(:authority, Fhir.CodeableConcept)
    field(:date, :datetime)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:status, Fhir.CodeableConcept)
  end
end
