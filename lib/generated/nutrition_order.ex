defmodule Fhir.Generated.NutritionOrder do
  use TypedStruct

  typedstruct do
    field :_dateTime, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_instantiates, [Fhir.Generated.Element], default: []
        field :_instantiatesUri, [Fhir.Generated.Element], default: []
        field :_intent, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_outsideFoodAllowed, Fhir.Generated.Element
        field :_priority, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :allergyIntolerance, [Fhir.Generated.Reference], default: []
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :dateTime, :datetime
        field :encounter, Fhir.Generated.Reference
        field :enteralFormula, Fhir.Generated.NutritionOrderEnteralFormula
        field :excludeFoodModifier, [Fhir.Generated.CodeableConcept], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :foodPreferenceModifier, [Fhir.Generated.CodeableConcept], default: []
        field :groupIdentifier, Fhir.Generated.Identifier
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :instantiates, [:string], default: []
        field :instantiatesCanonical, [:string], default: []
        field :instantiatesUri, [:string], default: []
        field :intent, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :oralDiet, Fhir.Generated.NutritionOrderOralDiet
        field :orderer, Fhir.Generated.Reference
        field :outsideFoodAllowed, :boolean
        field :performer, [Fhir.Generated.CodeableReference], default: []
        field :priority, :string
        field :resourceType, :string, default: "NutritionOrder"
        field :status, :string
        field :subject, Fhir.Generated.Reference
        field :supplement, [Fhir.Generated.NutritionOrderSupplement], default: []
        field :supportingInformation, [Fhir.Generated.Reference], default: []
        field :text, Fhir.Generated.Narrative
  end
end
