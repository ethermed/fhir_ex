defmodule Fhir.PractitionerCommunication do
  use TypedStruct

  typedstruct do
    field(:_preferred, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:language, Fhir.CodeableConcept)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:preferred, :boolean)
  end
end
