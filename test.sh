#!/bin/bash
grpcurl \
  -H "client-api-protocol: 1,1" \
  -H "Authorization: ${WAYPOINT_TOKEN}" \
  -proto=$HOME/go/src/github.com/hashicorp/waypoint/pkg/server/proto/server.proto \
  -import-path=$HOME/go/src/github.com/hashicorp/waypoint/pkg/server/proto \
  -import-path=$HOME/go/src/github.com/hashicorp/waypoint/thirdparty/proto/api-common-protos \
  api.hashicorp.cloud:443 hashicorp.waypoint.Waypoint/ListProjects

# echo "TEST"
# curl -L \
#   -H "Authorization: ${WAYPOINT_TOKEN}" \
#   https://api.cloud.hashicorp.com/waypoint/2022-02-03/namespace/$NAMESPACE/projects
# echo ""
# echo ""

# echo "PROJECTS"
# curl -L \
#   -H "Authorization: Bearer ${HCP_TOKEN}" \
#   https://api.cloud.hashicorp.com/waypoint/2022-02-03/namespace/$NAMESPACE/projects
# echo ""
# echo ""

# echo "NAMESPACE\n"
# curl -L \
#   -H "Authorization: Bearer ${HCP_TOKEN}" \
#   https://api.cloud.hashicorp.com/waypoint/2022-02-03/organizations/$HCP_ORG_ID/projects/$HCP_PROJ_ID/namespace
# echo ""
# echo ""

# echo "LOGIN\n"
# curl -L -X POST \
#   -H "Authorization: Bearer ${HCP_TOKEN}" https://api.cloud.hashicorp.com/waypoint/2022-02-03/namespace/9b1bf781-cea0-4586-98b7-fbe2be35ad98/token/login
# echo ""
# echo ""