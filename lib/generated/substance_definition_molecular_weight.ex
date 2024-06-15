defmodule Fhir.SubstanceDefinitionMolecularWeight do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :amount, Fhir.Quantity
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :method, Fhir.CodeableConcept
        field :modifierExtension, [Fhir.Extension], default: []
        field :type, Fhir.CodeableConcept
  end
end
