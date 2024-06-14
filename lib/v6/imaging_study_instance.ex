defmodule Fhir.v6().ImagingStudyInstance do
  use TypedStruct

  typedstruct do
    field(:_number, Fhir.v6().Element)
    field(:_title, Fhir.v6().Element)
    field(:_uid, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:number, :float)
    field(:sopClass, Fhir.v6().Coding)
    field(:title, :string)
    field(:uid, :string)
  end
end
