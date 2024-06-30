defmodule Fhir.GraphDefinitionLink do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_description, Fhir.Element)
    field(:_max, Fhir.Element)
    field(:_min, Fhir.Element)
    field(:_params, Fhir.Element)
    field(:_path, Fhir.Element)
    field(:_sliceName, Fhir.Element)
    field(:_sourceId, Fhir.Element)
    field(:_targetId, Fhir.Element)
    field(:compartment, [Fhir.GraphDefinitionCompartment], default: [])
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:max, :string)
    field(:min, :float)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:params, :string)
    field(:path, :string)
    field(:sliceName, :string)
    field(:sourceId, :string)
    field(:targetId, :string)
  end
end
