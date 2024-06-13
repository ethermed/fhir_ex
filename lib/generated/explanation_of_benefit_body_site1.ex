defmodule Fhir.Generated.ExplanationOfBenefitBodySite1 do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :site, [Fhir.Generated.CodeableReference], default: []
        field :subSite, [Fhir.Generated.CodeableConcept], default: []
  end
end
