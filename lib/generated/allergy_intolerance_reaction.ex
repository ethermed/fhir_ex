defmodule Fhir.Generated.AllergyIntoleranceReaction do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_onset, Fhir.Generated.Element
        field :_severity, Fhir.Generated.Element
        field :description, :string
        field :exposureRoute, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :manifestation, [Fhir.Generated.CodeableReference], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :onset, :datetime
        field :severity, :string
        field :substance, Fhir.Generated.CodeableConcept
  end
end
