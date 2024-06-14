defmodule Fhir.Substance do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.Element)
    field(:_expiry, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_instance, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:category, [Fhir.CodeableConcept], default: [])
    field(:code, Fhir.CodeableReference)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:description, :string)
    field(:expiry, :datetime)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:ingredient, [Fhir.SubstanceIngredient], default: [])
    field(:instance, :boolean)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:quantity, Fhir.Quantity)
    field(:resourceType, :string, default: "Substance")
    field(:status, :string)
    field(:text, Fhir.Narrative)
  end
end
