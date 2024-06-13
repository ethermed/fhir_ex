defmodule Fhir.Generated.InsurancePlanBenefit do
  use TypedStruct

  typedstruct do
    field :_requirement, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :limit, [Fhir.Generated.InsurancePlanLimit], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :requirement, :string
        field :type, Fhir.Generated.CodeableConcept
  end
end
