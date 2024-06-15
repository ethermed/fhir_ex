defmodule Fhir.MedicinalProductDefinitionPart do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_part, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :part, :string
        field :type, Fhir.CodeableConcept
  end
end
