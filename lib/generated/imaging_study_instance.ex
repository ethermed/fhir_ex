defmodule Fhir.ImagingStudyInstance do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_number, Fhir.Element)
    field(:_title, Fhir.Element)
    field(:_uid, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:number, :float)
    field(:sopClass, Fhir.Coding)
    field(:title, :string)
    field(:uid, :string)
  end
end
