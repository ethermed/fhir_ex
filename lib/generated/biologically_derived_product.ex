defmodule Fhir.Generated.BiologicallyDerivedProduct do
  use TypedStruct

  typedstruct do
    field :_division, Fhir.Generated.Element
        field :_expirationDate, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :biologicalSourceEvent, Fhir.Generated.Identifier
        field :collection, Fhir.Generated.BiologicallyDerivedProductCollection
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :division, :string
        field :expirationDate, :datetime
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :parent, [Fhir.Generated.Reference], default: []
        field :processingFacility, [Fhir.Generated.Reference], default: []
        field :productCategory, Fhir.Generated.Coding
        field :productCode, Fhir.Generated.CodeableConcept
        field :productStatus, Fhir.Generated.Coding
        field :property, [Fhir.Generated.BiologicallyDerivedProductProperty], default: []
        field :request, [Fhir.Generated.Reference], default: []
        field :resourceType, :string, default: "BiologicallyDerivedProduct"
        field :storageTempRequirements, Fhir.Generated.Range
        field :text, Fhir.Generated.Narrative
  end
end
