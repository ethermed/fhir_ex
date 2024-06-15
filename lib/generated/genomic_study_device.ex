defmodule Fhir.GenomicStudyDevice do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :device, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :function, Fhir.CodeableConcept
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
  end
end
