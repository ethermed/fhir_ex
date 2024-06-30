defmodule Fhir.BundleFixture do
  @json """
  {
    "resourceType": "Bundle",
    "type": "transaction",
    "entry": [
      {
        "resource": {
          "resourceType": "Patient",
          "id": "example-patient",
          "name": [
            {
              "use": "official",
              "family": "Doe",
              "given": ["John"]
            }
          ],
          "gender": "male",
          "birthDate": "1980-01-01"
        },
        "request": {
          "method": "POST",
          "url": "Patient"
        }
      },
      {
        "resource": {
          "resourceType": "Condition",
          "id": "example-condition",
          "patient": {
            "reference": "Patient/example-patient"
          },
          "code": {
            "coding": [
              {
                "system": "http://hl7.org/fhir/sid/icd-10-cm",
                "code": "E11.9",
                "display": "Type 2 diabetes mellitus without complications"
              }
            ]
          }
        },
        "request": {
          "method": "POST",
          "url": "Condition"
        }
      },
      {
        "resource": {
          "resourceType": "Procedure",
          "id": "example-procedure-1",
          "subject": {
            "reference": "Patient/example-patient"
          },
          "code": {
            "coding": [
              {
                "system": "http://www.ama-assn.org/go/cpt",
                "code": "93000",
                "display": "Electrocardiogram"
              }
            ]
          }
        },
        "request": {
          "method": "POST",
          "url": "Procedure"
        }
      },
      {
        "resource": {
          "resourceType": "Procedure",
          "id": "example-procedure-2",
          "subject": {
            "reference": "Patient/example-patient"
          },
          "code": {
            "coding": [
              {
                "system": "http://www.ama-assn.org/go/cpt",
                "code": "93010",
                "display": "Interpretation and report"
              }
            ]
          }
        },
        "request": {
          "method": "POST",
          "url": "Procedure"
        }
      },
      {
        "resource": {
          "resourceType": "Claim",
          "id": "example-claim",
          "status": "active",
          "type": {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/claim-type",
                "code": "professional"
              }
            ]
          },
          "patient": {
            "reference": "Patient/example-patient"
          },
          "provider": {
            "reference": "Practitioner/example-practitioner"
          },
          "insurance": [
            {
              "coverage": {
                "reference": "Coverage/example-coverage"
              }
            }
          ],
          "diagnosis": [
            {
              "sequence": 1,
              "diagnosisCodeableConcept": {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/sid/icd-10-cm",
                    "code": "E11.9",
                    "display": "Type 2 diabetes mellitus without complications"
                  }
                ]
              }
            }
          ],
          "item": [
            {
              "sequence": 1,
              "productOrService": {
                "coding": [
                  {
                    "system": "http://www.ama-assn.org/go/cpt",
                    "code": "93000",
                    "display": "Electrocardiogram"
                  }
                ]
              },
              "unitPrice": {
                "value": 100,
                "currency": "USD"
              }
            },
            {
              "sequence": 2,
              "productOrService": {
                "coding": [
                  {
                    "system": "http://www.ama-assn.org/go/cpt",
                    "code": "93010",
                    "display": "Interpretation and report"
                  }
                ]
              },
              "unitPrice": {
                "value": 50,
                "currency": "USD"
              }
            }
          ]
        },
        "request": {
          "method": "POST",
          "url": "Claim"
        }
      }
    ]
  }
  """
  def bundle() do
    Jason.decode!(@json)
  end
end
