defmodule Fhir.v6().SubstanceDefinitionCode do
  use TypedStruct

  typedstruct do
    field(:_statusDate, Fhir.v6().Element)
    field(:code, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
    field(:source, [Fhir.v6().Reference], default: [])
    field(:status, Fhir.v6().CodeableConcept)
    field(:statusDate, :datetime)
  end
end
