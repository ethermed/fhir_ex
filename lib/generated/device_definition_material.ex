defmodule Fhir.DeviceDefinitionMaterial do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_allergenicIndicator, Fhir.Element)
    field(:_alternate, Fhir.Element)
    field(:allergenicIndicator, :boolean)
    field(:alternate, :boolean)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:substance, Fhir.CodeableConcept)
  end
end
