defmodule Fhir.Generated.ElementDefinitionSlicing do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_ordered, Fhir.Generated.Element
        field :_rules, Fhir.Generated.Element
        field :description, :string
        field :discriminator, [Fhir.Generated.ElementDefinitionDiscriminator], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :ordered, :boolean
        field :rules, any()
  end
end
