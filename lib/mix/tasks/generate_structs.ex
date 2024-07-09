defmodule Mix.Tasks.GenerateStructs do
  use Mix.Task

  @shortdoc "Generate TypedStructs from JSON schema"
  def run(_) do
    schema = SchemaLoader.load_schema("priv/fhir.schema.6.0.json")

    StructGenerator.generate_structs(
      schema,
      ~w(Base ElementDefinition StructureDefinition StructureDefinition_Mapping StructureDefinition_Context StructureDefinition_Snapshot StructureDefinition_Differential)
    )

    # StructGenerator.generate_structs(schema, ~w(
    #   Address
    #   Age
    #   Annotation
    #   Attachment
    #   Availability
    #   boolean
    #   canonical
    #   Claim
    #   ClaimRelated
    #   ClaimResponse
    #   Claim_Accident
    #   Claim_CareTeam
    #   Claim_Diagnosis
    #   Claim_Event
    #   Claim_Insurance
    #   Claim_Payee
    #   Claim_Procedure
    #   ClaimResponse_Adjudication
    #   ClaimResponse_AddItem
    #   ClaimResponse_BodySite
    #   ClaimResponse_Detail
    #   ClaimResponse_Event
    #   ClaimResponse_Item
    #   ClaimResponse_ReviewOutcome
    #   ClaimResponse_SubDetail
    #   ClaimResponse_Total
    #   Claim_SupportingInfo
    #   code
    #   CodeableConcept
    #   CodeableReference
    #   Coding
    #   ContactDetail
    #   ContactPoint
    #   Count
    #   date
    #   DataRequirement
    #   decimal
    #   Distance
    #   Dosage
    #   Duration
    #   Element
    #   Expression
    #   ExtendedContactDetail
    #   Extension
    #   HumanName
    #   id
    #   Identifier
    #   integer
    #   Meta
    #   Money
    #   Narrative
    #   number
    #   ParameterDefinition
    #   Patient
    #   Patient_Communication
    #   Patient_Contact
    #   Patient_Link
    #   Period
    #   positiveInt
    #   Period
    #   Quantity
    #   Ratio
    #   RatioRange
    #   Reference
    #   RelatedArtifact
    #   SampledData
    #   Signature
    #   string
    #   Timing
    #   TriggerDefinition
    #   UsageContext
    #   uri
    # ))
  end
end
