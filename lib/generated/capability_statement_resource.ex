defmodule Fhir.Generated.CapabilityStatementResource do
  use TypedStruct

  typedstruct do
    field :_conditionalCreate, Fhir.Generated.Element
        field :_conditionalDelete, Fhir.Generated.Element
        field :_conditionalPatch, Fhir.Generated.Element
        field :_conditionalRead, Fhir.Generated.Element
        field :_conditionalUpdate, Fhir.Generated.Element
        field :_documentation, Fhir.Generated.Element
        field :_readHistory, Fhir.Generated.Element
        field :_referencePolicy, [Fhir.Generated.Element], default: []
        field :_searchInclude, [Fhir.Generated.Element], default: []
        field :_searchRevInclude, [Fhir.Generated.Element], default: []
        field :_type, Fhir.Generated.Element
        field :_updateCreate, Fhir.Generated.Element
        field :_versioning, Fhir.Generated.Element
        field :conditionalCreate, :boolean
        field :conditionalDelete, :string
        field :conditionalPatch, :boolean
        field :conditionalRead, :string
        field :conditionalUpdate, :boolean
        field :documentation, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :interaction, [Fhir.Generated.CapabilityStatementInteraction], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :operation, [Fhir.Generated.CapabilityStatementOperation], default: []
        field :profile, :string
        field :readHistory, :boolean
        field :referencePolicy, [:string], default: []
        field :searchInclude, [:string], default: []
        field :searchParam, [Fhir.Generated.CapabilityStatementSearchParam], default: []
        field :searchRevInclude, [:string], default: []
        field :supportedProfile, [:string], default: []
        field :type, :string
        field :updateCreate, :boolean
        field :versioning, :string
  end
end
