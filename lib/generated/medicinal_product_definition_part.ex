defmodule Fhir.Generated.MedicinalProductDefinitionPart do
  use TypedStruct

  typedstruct do
    field :_part, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :part, :string
        field :type, Fhir.Generated.CodeableConcept
  end
end
