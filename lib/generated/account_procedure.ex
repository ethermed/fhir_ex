defmodule Fhir.AccountProcedure do
  use TypedStruct

  typedstruct do
    field(:_dateOfService, Fhir.Element)
    field(:_sequence, Fhir.Element)
    field(:code, Fhir.CodeableReference)
    field(:dateOfService, :datetime)
    field(:device, [Fhir.Reference], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:packageCode, [Fhir.CodeableConcept], default: [])
    field(:sequence, :float)
    field(:type, [Fhir.CodeableConcept], default: [])
  end
end
