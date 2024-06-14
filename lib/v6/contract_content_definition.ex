defmodule Fhir.v6().ContractContentDefinition do
  use TypedStruct

  typedstruct do
    field(:_copyright, Fhir.v6().Element)
    field(:_publicationDate, Fhir.v6().Element)
    field(:_publicationStatus, Fhir.v6().Element)
    field(:copyright, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:publicationDate, :datetime)
    field(:publicationStatus, :string)
    field(:publisher, Fhir.v6().Reference)
    field(:subType, Fhir.v6().CodeableConcept)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
