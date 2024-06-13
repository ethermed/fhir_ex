defmodule Fhir.Generated.SubstancePolymerStructuralRepresentation do
  use TypedStruct

  typedstruct do
    field :_representation, Fhir.Generated.Element
        field :attachment, Fhir.Generated.Attachment
        field :extension, [Fhir.Generated.Extension], default: []
        field :format, Fhir.Generated.CodeableConcept
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :representation, :string
        field :type, Fhir.Generated.CodeableConcept
  end
end
