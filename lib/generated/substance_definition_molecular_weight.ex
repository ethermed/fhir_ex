defmodule Fhir.Generated.SubstanceDefinitionMolecularWeight do
  use TypedStruct

  typedstruct do
    field :amount, Fhir.Generated.Quantity
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :method, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
