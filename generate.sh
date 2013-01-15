#!/bin/bash -ue

JUBATUS_DIR="jubatus-generate"
JUBATUS_BRANCH="master"
CLIENT_DIR="$(cd $(dirname ${0}) && echo ${PWD})"

[ $# -eq 0 ] || JUBATUS_BRANCH="${1}"

rm -rf "${JUBATUS_DIR}"
git clone https://github.com/jubatus/jubatus.git "${JUBATUS_DIR}"
pushd "${JUBATUS_DIR}"
git checkout "${JUBATUS_BRANCH}"
popd

# Ruby

capitalize() {
  echo "$(echo ${1:0:1} | tr 'a-z' 'A-Z')${1:1}"
}

rm -rf "${CLIENT_DIR}/lib"
pushd "${JUBATUS_DIR}/src/server"
for IDL in *.idl; do
  NAMESPACE="$(capitalize $(basename "${IDL}" ".idl"))"
  mpidl ruby "${IDL}" -m "Jubatus::${NAMESPACE}" -o "${CLIENT_DIR}/lib/jubatus"
done
popd

for PATCH in "${CLIENT_DIR}/patch"/*.patch; do
  patch --no-backup-if-mismatch -p0 --directory "${CLIENT_DIR}" < "${PATCH}"
done

rm -rf "${JUBATUS_DIR}"
