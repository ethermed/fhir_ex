defmodule Fhir.SubstanceDefinitionCode do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_statusDate, Fhir.Element
        field :code, Fhir.CodeableConcept
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :source, [Fhir.Reference], default: []
        field :status, Fhir.CodeableConcept
        field :statusDate, :datetime
  end
end
