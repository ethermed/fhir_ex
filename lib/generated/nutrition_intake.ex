defmodule Fhir.Generated.NutritionIntake do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_instantiatesUri, [Fhir.Generated.Element], default: []
        field :_language, Fhir.Generated.Element
        field :_occurrenceDateTime, Fhir.Generated.Element
        field :_recorded, Fhir.Generated.Element
        field :_reportedBoolean, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :code, Fhir.Generated.CodeableConcept
        field :consumedItem, [Fhir.Generated.NutritionIntakeConsumedItem], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :derivedFrom, [Fhir.Generated.Reference], default: []
        field :encounter, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :ingredientLabel, [Fhir.Generated.NutritionIntakeIngredientLabel], default: []
        field :instantiatesCanonical, [:string], default: []
        field :instantiatesUri, [:string], default: []
        field :language, :string
        field :location, Fhir.Generated.Reference
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :occurrenceDateTime, :string
        field :occurrencePeriod, Fhir.Generated.Period
        field :partOf, [Fhir.Generated.Reference], default: []
        field :performer, [Fhir.Generated.NutritionIntakePerformer], default: []
        field :reason, [Fhir.Generated.CodeableReference], default: []
        field :recorded, :datetime
        field :reportedBoolean, :boolean
        field :reportedReference, Fhir.Generated.Reference
        field :resourceType, :string, default: "NutritionIntake"
        field :status, :string
        field :statusReason, [Fhir.Generated.CodeableConcept], default: []
        field :subject, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
  end
end
