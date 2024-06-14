defmodule Fhir.v6().DeviceDefinitionCorrectiveAction do
  use TypedStruct

  typedstruct do
    field(:_recall, Fhir.v6().Element)
    field(:_scope, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:period, Fhir.v6().Period)
    field(:recall, :boolean)
    field(:scope, :string)
  end
end
