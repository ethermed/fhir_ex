defmodule Fhir.v6().StructureMapTarget do
  use TypedStruct

  typedstruct do
    field(:_context, Fhir.v6().Element)
    field(:_element, Fhir.v6().Element)
    field(:_listMode, [Fhir.v6().Element], default: [])
    field(:_listRuleId, Fhir.v6().Element)
    field(:_transform, Fhir.v6().Element)
    field(:_variable, Fhir.v6().Element)
    field(:context, :string)
    field(:element, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:listMode, [:string], default: [])
    field(:listRuleId, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:parameter, [Fhir.v6().StructureMapParameter], default: [])
    field(:transform, :string)
    field(:variable, :string)
  end
end
