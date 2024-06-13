defmodule Fhir.Generated.SubstanceDefinitionCode do
  use TypedStruct

  typedstruct do
    field :_statusDate, Fhir.Generated.Element
        field :code, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :source, [Fhir.Generated.Reference], default: []
        field :status, Fhir.Generated.CodeableConcept
        field :statusDate, :datetime
  end
end
