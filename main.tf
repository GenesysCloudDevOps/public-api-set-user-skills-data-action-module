resource "genesyscloud_integration_action" "action" {
    name           = var.action_name
    category       = var.action_category
    integration_id = var.integration_id
    secure         = var.secure_data_action
    
    contract_input  = jsonencode({
        "additionalProperties" = true,
        "properties" = {
            "skillId1" = {
                "type" = "string"
            },
            "skillId10" = {
                "type" = "string"
            },
            "skillId11" = {
                "type" = "string"
            },
            "skillId12" = {
                "type" = "string"
            },
            "skillId13" = {
                "type" = "string"
            },
            "skillId14" = {
                "type" = "string"
            },
            "skillId15" = {
                "type" = "string"
            },
            "skillId16" = {
                "type" = "string"
            },
            "skillId17" = {
                "type" = "string"
            },
            "skillId18" = {
                "type" = "string"
            },
            "skillId19" = {
                "type" = "string"
            },
            "skillId2" = {
                "type" = "string"
            },
            "skillId20" = {
                "type" = "string"
            },
            "skillId3" = {
                "type" = "string"
            },
            "skillId4" = {
                "type" = "string"
            },
            "skillId5" = {
                "type" = "string"
            },
            "skillId6" = {
                "type" = "string"
            },
            "skillId7" = {
                "type" = "string"
            },
            "skillId8" = {
                "type" = "string"
            },
            "skillId9" = {
                "type" = "string"
            },
            "userId" = {
                "type" = "string"
            }
        },
        "type" = "object"
    })
    contract_output = jsonencode({
        "additionalProperties" = true,
        "properties" = {},
        "type" = "object"
    })
    
    config_request {
        request_template     = "[\n#if(\"$!{input.skillId1}\" != \"\")\n  {\n    \"id\": \"$!{input.skillId1}\",\n    \"proficiency\": 0\n  }\n#end\n#if(\"$!{input.skillId2}\" != \"\")\n  ,{\n    \"id\": \"$!{input.skillId2}\",\n    \"proficiency\": 0\n  }\n#end\n#if(\"$!{input.skillId3}\" != \"\")\n  ,{\n    \"id\": \"$!{input.skillId3}\",\n    \"proficiency\": 0\n  }\n#end\n#if(\"$!{input.skillId4}\" != \"\")\n  ,{\n    \"id\": \"$!{input.skillId4}\",\n    \"proficiency\": 0\n  }\n#end\n#if(\"$!{input.skillId5}\" != \"\")\n  ,{\n    \"id\": \"$!{input.skillId5}\",\n    \"proficiency\": 0\n  }\n#end\n#if(\"$!{input.skillId6}\" != \"\")\n  ,{\n    \"id\": \"$!{input.skillId6}\",\n    \"proficiency\": 0\n  }\n#end\n#if(\"$!{input.skillId7}\" != \"\")\n  ,{\n    \"id\": \"$!{input.skillId7}\",\n    \"proficiency\": 0\n  }\n#end\n#if(\"$!{input.skillId8}\" != \"\")\n  ,{\n    \"id\": \"$!{input.skillId8}\",\n    \"proficiency\": 0\n  }\n#end\n#if(\"$!{input.skillId9}\" != \"\")\n  ,{\n    \"id\": \"$!{input.skillId9}\",\n    \"proficiency\": 0\n  }\n#end\n#if(\"$!{input.skillId10}\" != \"\")\n  ,{\n    \"id\": \"$!{input.skillId10}\",\n    \"proficiency\": 0\n  }\n#end\n#if(\"$!{input.skillId11}\" != \"\")\n  ,{\n    \"id\": \"$!{input.skillId11}\",\n    \"proficiency\": 0\n  }\n#end\n#if(\"$!{input.skillId12}\" != \"\")\n  ,{\n    \"id\": \"$!{input.skillId12}\",\n    \"proficiency\": 0\n  }\n#end\n#if(\"$!{input.skillId13}\" != \"\")\n  ,{\n    \"id\": \"$!{input.skillId13}\",\n    \"proficiency\": 0\n  }\n#end\n#if(\"$!{input.skillId14}\" != \"\")\n  ,{\n    \"id\": \"$!{input.skillId14}\",\n    \"proficiency\": 0\n  }\n#end\n#if(\"$!{input.skillId15}\" != \"\")\n  ,{\n    \"id\": \"$!{input.skillId15}\",\n    \"proficiency\": 0\n  }\n#end\n#if(\"$!{input.skillId16}\" != \"\")\n  ,{\n    \"id\": \"$!{input.skillId16}\",\n    \"proficiency\": 0\n  }\n#end\n#if(\"$!{input.skillId17}\" != \"\")\n  ,{\n    \"id\": \"$!{input.skillId17}\",\n    \"proficiency\": 0\n  }\n#end\n#if(\"$!{input.skillId18}\" != \"\")\n  ,{\n    \"id\": \"$!{input.skillId18}\",\n    \"proficiency\": 0\n  }\n#end\n#if(\"$!{input.skillId19}\" != \"\")\n  ,{\n    \"id\": \"$!{input.skillId19}\",\n    \"proficiency\": 0\n  }\n#end\n#if(\"$!{input.skillId20}\" != \"\")\n  ,{\n    \"id\": \"$!{input.skillId20}\",\n    \"proficiency\": 0\n  }\n#end\n]"
        request_type         = "PUT"
        request_url_template = "/api/v2/users/$${input.userId}/routingskills/bulk"
    }

    config_response {
        success_template = "$${rawResult}"
    }
}