defmodule Fhir.StructureMapSource do
  use TypedStruct

  typedstruct do
    field(:_check, Fhir.Element)
    field(:_condition, Fhir.Element)
    field(:_context, Fhir.Element)
    field(:_defaultValue, Fhir.Element)
    field(:_element, Fhir.Element)
    field(:_listMode, Fhir.Element)
    field(:_logMessage, Fhir.Element)
    field(:_max, Fhir.Element)
    field(:_min, Fhir.Element)
    field(:_type, Fhir.Element)
    field(:_variable, Fhir.Element)
    field(:check, :string)
    field(:condition, :string)
    field(:context, :string)
    field(:defaultValue, :string)
    field(:element, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:listMode, :string)
    field(:logMessage, :string)
    field(:max, :string)
    field(:min, :float)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, :string)
    field(:variable, :string)
  end
end
