defmodule Fhir.Generated.DetectedIssueMitigation do
  use TypedStruct

  typedstruct do
    field :_date, Fhir.Generated.Element
        field :action, Fhir.Generated.CodeableConcept
        field :author, Fhir.Generated.Reference
        field :date, :datetime
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
  end
end
