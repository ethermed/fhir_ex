defmodule Fhir.Generated.ContractContentDefinition do
  use TypedStruct

  typedstruct do
    field :_copyright, Fhir.Generated.Element
        field :_publicationDate, Fhir.Generated.Element
        field :_publicationStatus, Fhir.Generated.Element
        field :copyright, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :publicationDate, :datetime
        field :publicationStatus, :string
        field :publisher, Fhir.Generated.Reference
        field :subType, Fhir.Generated.CodeableConcept
        field :type, Fhir.Generated.CodeableConcept
  end
end
