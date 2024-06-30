defmodule Fhir.MedicinalProductDefinitionName do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_productName, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:part, [Fhir.MedicinalProductDefinitionPart], default: [])
    field(:productName, :string)
    field(:type, Fhir.CodeableConcept)
    field(:usage, [Fhir.MedicinalProductDefinitionUsage], default: [])
  end
end
