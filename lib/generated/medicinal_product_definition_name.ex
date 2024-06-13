defmodule Fhir.Generated.MedicinalProductDefinitionName do
  use TypedStruct

  typedstruct do
    field :_productName, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :part, [Fhir.Generated.MedicinalProductDefinitionPart], default: []
        field :productName, :string
        field :type, Fhir.Generated.CodeableConcept
        field :usage, [Fhir.Generated.MedicinalProductDefinitionUsage], default: []
  end
end
