defmodule Fhir.v6().StructureMapSource do
  use TypedStruct

  typedstruct do
    field(:_check, Fhir.v6().Element)
    field(:_condition, Fhir.v6().Element)
    field(:_context, Fhir.v6().Element)
    field(:_defaultValue, Fhir.v6().Element)
    field(:_element, Fhir.v6().Element)
    field(:_listMode, Fhir.v6().Element)
    field(:_logMessage, Fhir.v6().Element)
    field(:_max, Fhir.v6().Element)
    field(:_min, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:_variable, Fhir.v6().Element)
    field(:check, :string)
    field(:condition, :string)
    field(:context, :string)
    field(:defaultValue, :string)
    field(:element, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:listMode, :string)
    field(:logMessage, :string)
    field(:max, :string)
    field(:min, :float)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, :string)
    field(:variable, :string)
  end
end
