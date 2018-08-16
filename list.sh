#!/bin/bash

##### get image list
#output
#   array   image list
get_image_list() {
    curl --silent --user "$REG_USER:$REG_PASSWORD" \
        -X GET "$REG_URL/v2/_catalog" | \
        jq -r '.repositories[]'
}

##### get tag list
#output
#   array   tag list
get_tag_list() {
    curl --silent --user "$REG_USER:$REG_PASSWORD" \
        -X GET "$REG_URL/v2/$IMAGE/tags/list" | \
        jq -r '.tags[]'
}

##### get image id
#para   $1      image
#       $2      tag
#output string  id
get_image_id() {
    curl --silent --user "$REG_USER:$REG_PASSWORD" \
        -H 'Accept: application/vnd.docker.distribution.manifest.v2+json' \
        -X GET "$REG_URL/v2/$1/manifests/$2" | \
        jq -r '.config.digest' | \
        awk '{split($0, elem, ":"); print substr(elem[2], 1, 12)}'
}

##### get image create time
#para   $1      image
#       $2      tag
#output string  create time
get_image_create_time() {
    curl --silent --user "$REG_USER:$REG_PASSWORD" \
        -X GET "$REG_URL/v2/$1/manifests/$2" | \
        jq -r '.history[].v1Compatibility' | \
        jq -r '.created' |
        sort -r |
        head -n 1 |
        awk '{split($0, elem, "."); print elem[1]}'
}

##### main process
if [ "$REG_URL" == "" ] || [ "$REG_USER" == "" ] || [ "$REG_PASSWORD" == "" ]; then
    echo "Parameter not specified."
    exit 1
fi

IMAGE_LIST=($(get_image_list))
printf "%-40s%-20s%s\n" "REPOSITORY & TAG" "IMAGE ID" "CREATED"
for IMAGE in ${IMAGE_LIST[@]}; do
    echo "$IMAGE"

    TAG_LIST=($(get_tag_list))
    for TAG in ${TAG_LIST[@]}; do
        #image id
        IMAGE_ID=$(get_image_id $IMAGE $TAG)

        #created time
        CREATE_TIME=$(get_image_create_time $IMAGE $TAG)

        printf "%-40s%-20s%s\n" "  \_ $TAG" "$IMAGE_ID" "$CREATE_TIME"
    done
done
