defmodule Fhir.NutritionIntake do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_implicitRules, Fhir.Element
        field :_instantiatesUri, [Fhir.Element], default: []
        field :_language, Fhir.Element
        field :_occurrenceDateTime, Fhir.Element
        field :_recorded, Fhir.Element
        field :_reportedBoolean, Fhir.Element
        field :_status, Fhir.Element
        field :basedOn, [Fhir.Reference], default: []
        field :code, Fhir.CodeableConcept
        field :consumedItem, [Fhir.NutritionIntakeConsumedItem], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :derivedFrom, [Fhir.Reference], default: []
        field :encounter, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :ingredientLabel, [Fhir.NutritionIntakeIngredientLabel], default: []
        field :instantiatesCanonical, [:string], default: []
        field :instantiatesUri, [:string], default: []
        field :language, :string
        field :location, Fhir.Reference
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :occurrenceDateTime, :string
        field :occurrencePeriod, Fhir.Period
        field :partOf, [Fhir.Reference], default: []
        field :performer, [Fhir.NutritionIntakePerformer], default: []
        field :reason, [Fhir.CodeableReference], default: []
        field :recorded, :datetime
        field :reportedBoolean, :boolean
        field :reportedReference, Fhir.Reference
        field :resourceType, :string, default: "NutritionIntake"
        field :status, :string
        field :statusReason, [Fhir.CodeableConcept], default: []
        field :subject, Fhir.Reference
        field :text, Fhir.Narrative
  end
end
