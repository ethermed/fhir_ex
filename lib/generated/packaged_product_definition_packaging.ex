defmodule Fhir.PackagedProductDefinitionPackaging do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_componentPart, Fhir.Element)
    field(:_quantity, Fhir.Element)
    field(:alternateMaterial, [Fhir.CodeableConcept], default: [])
    field(:componentPart, :boolean)
    field(:containedItem, [Fhir.PackagedProductDefinitionContainedItem], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:manufacturer, [Fhir.Reference], default: [])
    field(:material, [Fhir.CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:packaging, [Fhir.PackagedProductDefinitionPackaging], default: [])
    field(:property, [Fhir.PackagedProductDefinitionProperty], default: [])
    field(:quantity, :float)
    field(:shelfLifeStorage, [Fhir.ProductShelfLife], default: [])
    field(:type, Fhir.CodeableConcept)
  end
end
