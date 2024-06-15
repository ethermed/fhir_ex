defmodule Fhir.BiologicallyDerivedProduct do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_division, Fhir.Element
        field :_expirationDate, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :biologicalSourceEvent, Fhir.Identifier
        field :collection, Fhir.BiologicallyDerivedProductCollection
        field :contained, [Fhir.ResourceList], default: []
        field :division, :string
        field :expirationDate, :datetime
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :parent, [Fhir.Reference], default: []
        field :processingFacility, [Fhir.Reference], default: []
        field :productCategory, Fhir.Coding
        field :productCode, Fhir.CodeableConcept
        field :productStatus, Fhir.Coding
        field :property, [Fhir.BiologicallyDerivedProductProperty], default: []
        field :request, [Fhir.Reference], default: []
        field :resourceType, :string, default: "BiologicallyDerivedProduct"
        field :storageTempRequirements, Fhir.Range
        field :text, Fhir.Narrative
  end
end
