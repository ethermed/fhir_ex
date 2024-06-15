defmodule Fhir.CapabilityStatementResource do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_conditionalCreate, Fhir.Element
        field :_conditionalDelete, Fhir.Element
        field :_conditionalPatch, Fhir.Element
        field :_conditionalRead, Fhir.Element
        field :_conditionalUpdate, Fhir.Element
        field :_documentation, Fhir.Element
        field :_readHistory, Fhir.Element
        field :_referencePolicy, [Fhir.Element], default: []
        field :_searchInclude, [Fhir.Element], default: []
        field :_searchRevInclude, [Fhir.Element], default: []
        field :_type, Fhir.Element
        field :_updateCreate, Fhir.Element
        field :_versioning, Fhir.Element
        field :conditionalCreate, :boolean
        field :conditionalDelete, :string
        field :conditionalPatch, :boolean
        field :conditionalRead, :string
        field :conditionalUpdate, :boolean
        field :documentation, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :interaction, [Fhir.CapabilityStatementInteraction], default: []
        field :modifierExtension, [Fhir.Extension], default: []
        field :operation, [Fhir.CapabilityStatementOperation], default: []
        field :profile, :string
        field :readHistory, :boolean
        field :referencePolicy, [:string], default: []
        field :searchInclude, [:string], default: []
        field :searchParam, [Fhir.CapabilityStatementSearchParam], default: []
        field :searchRevInclude, [:string], default: []
        field :supportedProfile, [:string], default: []
        field :type, :string
        field :updateCreate, :boolean
        field :versioning, :string
  end
end
