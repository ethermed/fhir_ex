defmodule Fhir.DetectedIssueMitigation do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_date, Fhir.Element
        field :action, Fhir.CodeableConcept
        field :author, Fhir.Reference
        field :date, :datetime
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
  end
end
