defmodule Fhir.Generated.SubstanceReferenceInformationGeneElement do
  use TypedStruct

  typedstruct do
    field :element, Fhir.Generated.Identifier
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :source, [Fhir.Generated.Reference], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
