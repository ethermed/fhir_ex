defmodule Fhir.v6().SubstanceDefinitionCharacterization do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:file, [Fhir.v6().Attachment], default: [])
    field(:form, Fhir.v6().CodeableConcept)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:technique, Fhir.v6().CodeableConcept)
  end
end
