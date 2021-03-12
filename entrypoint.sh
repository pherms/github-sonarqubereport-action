#!/bin/bash

curl --location --request GET "https://sqplayground.xablu.com/api/measures/component?component=${INPUT_PROJECTKEY}&metricKeys=violations,bugs,code_smells,reliability_rating,security_rating,security_review_rating,sqale_rating,vulnerabilities,security_hotspots" \
--header "Authorization: Basic ${INPUT_SONARQUBETOKEN}" > result.json