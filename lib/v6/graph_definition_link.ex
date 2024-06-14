defmodule Fhir.v6().GraphDefinitionLink do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_max, Fhir.v6().Element)
    field(:_min, Fhir.v6().Element)
    field(:_params, Fhir.v6().Element)
    field(:_path, Fhir.v6().Element)
    field(:_sliceName, Fhir.v6().Element)
    field(:_sourceId, Fhir.v6().Element)
    field(:_targetId, Fhir.v6().Element)
    field(:compartment, [Fhir.v6().GraphDefinitionCompartment], default: [])
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:max, :string)
    field(:min, :float)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:params, :string)
    field(:path, :string)
    field(:sliceName, :string)
    field(:sourceId, :string)
    field(:targetId, :string)
  end
end
