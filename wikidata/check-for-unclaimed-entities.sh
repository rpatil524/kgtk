#! /bin/bash

source common.sh

# ==============================================================================
echo -e "\nCheck for unclaimed entities in the node1 column."
kgtk ${KGTK_FLAGS} \
     ifnotexists $VERBOSE --use-mgzip=$USE_MGZIP --presorted \
     --input-file ${COUNTDIR}/all.node1.entity.counts.${SORTED_KGTK} \
     --filter-file ${COUNTDIR}/claims.node1.entity.counts.${SORTED_KGTK} \
     --output-file ${COUNTDIR}/all.node1.entity.counts.unclaimed.${SORTED_KGTK} \
     --input-keys node1 \
     --filter-keys node1

echo -e "\nCheck for unclaimed entities in the label column."
kgtk ${KGTK_FLAGS} \
     ifnotexists $VERBOSE --use-mgzip=$USE_MGZIP --presorted \
     --input-file ${COUNTDIR}/all.label.entity.counts.${SORTED_KGTK} \
     --filter-file ${COUNTDIR}/claims.node1.entity.counts.${SORTED_KGTK} \
     --output-file ${COUNTDIR}/all.label.entity.counts.unclaimed.${SORTED_KGTK} \
     --input-keys node1 \
     --filter-keys node1

echo -e "\nCheck for unclaimed entities in the node2 column."
kgtk ${KGTK_FLAGS} \
     ifnotexists $VERBOSE --use-mgzip=$USE_MGZIP --presorted \
     --input-file ${COUNTDIR}/all.node2.entity.counts.${SORTED_KGTK} \
     --filter-file ${COUNTDIR}/claims.node1.entity.counts.${SORTED_KGTK} \
     --output-file ${COUNTDIR}/all.node2.entity.counts.unclaimed.${SORTED_KGTK} \
     --input-keys node1 \
     --filter-keys node1
