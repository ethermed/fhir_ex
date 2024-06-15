defmodule Fhir.NutritionOrder do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_dateTime, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_instantiates, [Fhir.Element], default: []
        field :_instantiatesUri, [Fhir.Element], default: []
        field :_intent, Fhir.Element
        field :_language, Fhir.Element
        field :_outsideFoodAllowed, Fhir.Element
        field :_priority, Fhir.Element
        field :_status, Fhir.Element
        field :allergyIntolerance, [Fhir.Reference], default: []
        field :basedOn, [Fhir.Reference], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :dateTime, :datetime
        field :encounter, Fhir.Reference
        field :enteralFormula, Fhir.NutritionOrderEnteralFormula
        field :excludeFoodModifier, [Fhir.CodeableConcept], default: []
        field :extension, [Fhir.Extension], default: []
        field :foodPreferenceModifier, [Fhir.CodeableConcept], default: []
        field :groupIdentifier, Fhir.Identifier
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :instantiates, [:string], default: []
        field :instantiatesCanonical, [:string], default: []
        field :instantiatesUri, [:string], default: []
        field :intent, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :oralDiet, Fhir.NutritionOrderOralDiet
        field :orderer, Fhir.Reference
        field :outsideFoodAllowed, :boolean
        field :performer, [Fhir.CodeableReference], default: []
        field :priority, :string
        field :resourceType, :string, default: "NutritionOrder"
        field :status, :string
        field :subject, Fhir.Reference
        field :supplement, [Fhir.NutritionOrderSupplement], default: []
        field :supportingInformation, [Fhir.Reference], default: []
        field :text, Fhir.Narrative
  end
end
