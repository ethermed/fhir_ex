defmodule Fhir.v6().AccountProcedure do
  use TypedStruct

  typedstruct do
    field(:_dateOfService, Fhir.v6().Element)
    field(:_sequence, Fhir.v6().Element)
    field(:code, Fhir.v6().CodeableReference)
    field(:dateOfService, :datetime)
    field(:device, [Fhir.v6().Reference], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:packageCode, [Fhir.v6().CodeableConcept], default: [])
    field(:sequence, :float)
    field(:type, [Fhir.v6().CodeableConcept], default: [])
  end
end
