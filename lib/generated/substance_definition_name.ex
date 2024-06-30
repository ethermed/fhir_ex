defmodule Fhir.SubstanceDefinitionName do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_name, Fhir.Element)
    field(:_preferred, Fhir.Element)
    field(:domain, [Fhir.CodeableConcept], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:jurisdiction, [Fhir.CodeableConcept], default: [])
    field(:language, [Fhir.CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
    field(:official, [Fhir.SubstanceDefinitionOfficial], default: [])
    field(:preferred, :boolean)
    field(:source, [Fhir.Reference], default: [])
    field(:status, Fhir.CodeableConcept)
    field(:synonym, [Fhir.SubstanceDefinitionName], default: [])
    field(:translation, [Fhir.SubstanceDefinitionName], default: [])
    field(:type, Fhir.CodeableConcept)
  end
end
