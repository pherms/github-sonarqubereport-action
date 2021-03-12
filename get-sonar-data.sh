#!/bin/bash

curl --location --request GET "https://sqplayground.xablu.com/api/measures/component?component=${PROJECTKEY}&metricKeys=violations,bugs,code_smells,reliability_rating,security_rating,security_review_rating,sqale_rating,vulnerabilities,security_hotspots" \
--header "Authorization: Basic ${SONARQUBETOKEN}" > result.json