defmodule Fhir.PatientLink do
  use TypedStruct

  typedstruct do
    field(:_type, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:other, Fhir.Reference)
    field(:type, :string)
  end
end
