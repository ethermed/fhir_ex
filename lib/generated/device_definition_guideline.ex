defmodule Fhir.DeviceDefinitionGuideline do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_intendedUse, Fhir.Element
        field :_usageInstruction, Fhir.Element
        field :contraindication, [Fhir.CodeableConcept], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :indication, [Fhir.CodeableConcept], default: []
        field :intendedUse, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :relatedArtifact, [Fhir.RelatedArtifact], default: []
        field :usageInstruction, :string
        field :useContext, [Fhir.UsageContext], default: []
        field :warning, [Fhir.CodeableConcept], default: []
  end
end
