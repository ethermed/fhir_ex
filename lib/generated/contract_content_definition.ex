defmodule Fhir.ContractContentDefinition do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_copyright, Fhir.Element)
    field(:_publicationDate, Fhir.Element)
    field(:_publicationStatus, Fhir.Element)
    field(:copyright, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:publicationDate, :datetime)
    field(:publicationStatus, :string)
    field(:publisher, Fhir.Reference)
    field(:subType, Fhir.CodeableConcept)
    field(:type, Fhir.CodeableConcept)
  end
end
