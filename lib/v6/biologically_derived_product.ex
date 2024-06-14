defmodule Fhir.v6().BiologicallyDerivedProduct do
  use TypedStruct

  typedstruct do
    field(:_division, Fhir.v6().Element)
    field(:_expirationDate, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:biologicalSourceEvent, Fhir.v6().Identifier)
    field(:collection, Fhir.v6().BiologicallyDerivedProductCollection)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:division, :string)
    field(:expirationDate, :datetime)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:parent, [Fhir.v6().Reference], default: [])
    field(:processingFacility, [Fhir.v6().Reference], default: [])
    field(:productCategory, Fhir.v6().Coding)
    field(:productCode, Fhir.v6().CodeableConcept)
    field(:productStatus, Fhir.v6().Coding)
    field(:property, [Fhir.v6().BiologicallyDerivedProductProperty], default: [])
    field(:request, [Fhir.v6().Reference], default: [])
    field(:resourceType, :string, default: "BiologicallyDerivedProduct")
    field(:storageTempRequirements, Fhir.v6().Range)
    field(:text, Fhir.v6().Narrative)
  end
end
