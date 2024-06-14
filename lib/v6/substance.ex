defmodule Fhir.v6().Substance do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_expiry, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_instance, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:category, [Fhir.v6().CodeableConcept], default: [])
    field(:code, Fhir.v6().CodeableReference)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:description, :string)
    field(:expiry, :datetime)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:ingredient, [Fhir.v6().SubstanceIngredient], default: [])
    field(:instance, :boolean)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:quantity, Fhir.v6().Quantity)
    field(:resourceType, :string, default: "Substance")
    field(:status, :string)
    field(:text, Fhir.v6().Narrative)
  end
end
