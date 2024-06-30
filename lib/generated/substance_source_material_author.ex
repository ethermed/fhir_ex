defmodule Fhir.SubstanceSourceMaterialAuthor do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_authorDescription, Fhir.Element)
    field(:authorDescription, :string)
    field(:authorType, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
