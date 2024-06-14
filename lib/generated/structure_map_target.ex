defmodule Fhir.StructureMapTarget do
  use TypedStruct

  typedstruct do
    field(:_context, Fhir.Element)
    field(:_element, Fhir.Element)
    field(:_listMode, [Fhir.Element], default: [])
    field(:_listRuleId, Fhir.Element)
    field(:_transform, Fhir.Element)
    field(:_variable, Fhir.Element)
    field(:context, :string)
    field(:element, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:listMode, [:string], default: [])
    field(:listRuleId, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:parameter, [Fhir.StructureMapParameter], default: [])
    field(:transform, :string)
    field(:variable, :string)
  end
end
