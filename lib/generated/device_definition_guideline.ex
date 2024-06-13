defmodule Fhir.Generated.DeviceDefinitionGuideline do
  use TypedStruct

  typedstruct do
    field :_intendedUse, Fhir.Generated.Element
        field :_usageInstruction, Fhir.Generated.Element
        field :contraindication, [Fhir.Generated.CodeableConcept], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :indication, [Fhir.Generated.CodeableConcept], default: []
        field :intendedUse, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :relatedArtifact, [Fhir.Generated.RelatedArtifact], default: []
        field :usageInstruction, :string
        field :useContext, [Fhir.Generated.UsageContext], default: []
        field :warning, [Fhir.Generated.CodeableConcept], default: []
  end
end
