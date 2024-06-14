defmodule Fhir.RegulatedAuthorization do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_statusDate, Fhir.Element)
    field(:attachedDocument, [Fhir.Reference], default: [])
    field(:basis, [Fhir.CodeableConcept], default: [])
    field(:case, Fhir.RegulatedAuthorizationCase)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:holder, Fhir.Reference)
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:indication, [Fhir.CodeableReference], default: [])
    field(:intendedUse, Fhir.CodeableConcept)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:region, [Fhir.CodeableConcept], default: [])
    field(:regulator, Fhir.Reference)
    field(:resourceType, :string, default: "RegulatedAuthorization")
    field(:status, Fhir.CodeableConcept)
    field(:statusDate, :datetime)
    field(:subject, [Fhir.Reference], default: [])
    field(:text, Fhir.Narrative)
    field(:type, Fhir.CodeableConcept)
    field(:validityPeriod, Fhir.Period)
  end
end
