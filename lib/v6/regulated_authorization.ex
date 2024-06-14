defmodule Fhir.v6().RegulatedAuthorization do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_statusDate, Fhir.v6().Element)
    field(:attachedDocument, [Fhir.v6().Reference], default: [])
    field(:basis, [Fhir.v6().CodeableConcept], default: [])
    field(:case, Fhir.v6().RegulatedAuthorizationCase)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:holder, Fhir.v6().Reference)
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:indication, [Fhir.v6().CodeableReference], default: [])
    field(:intendedUse, Fhir.v6().CodeableConcept)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:region, [Fhir.v6().CodeableConcept], default: [])
    field(:regulator, Fhir.v6().Reference)
    field(:resourceType, :string, default: "RegulatedAuthorization")
    field(:status, Fhir.v6().CodeableConcept)
    field(:statusDate, :datetime)
    field(:subject, [Fhir.v6().Reference], default: [])
    field(:text, Fhir.v6().Narrative)
    field(:type, Fhir.v6().CodeableConcept)
    field(:validityPeriod, Fhir.v6().Period)
  end
end
