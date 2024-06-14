defmodule Fhir.v6().OperationDefinitionParameter do
  use TypedStruct

  typedstruct do
    field(:_allowedType, [Fhir.v6().Element], default: [])
    field(:_documentation, Fhir.v6().Element)
    field(:_max, Fhir.v6().Element)
    field(:_min, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:_scope, [Fhir.v6().Element], default: [])
    field(:_searchType, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:_use, Fhir.v6().Element)
    field(:allowedType, [:string], default: [])
    field(:binding, Fhir.v6().OperationDefinitionBinding)
    field(:documentation, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:max, :string)
    field(:min, :float)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:part, [Fhir.v6().OperationDefinitionParameter], default: [])
    field(:referencedFrom, [Fhir.v6().OperationDefinitionReferencedFrom], default: [])
    field(:scope, [:string], default: [])
    field(:searchType, :string)
    field(:targetProfile, [:string], default: [])
    field(:type, :string)
    field(:use, :string)
  end
end
