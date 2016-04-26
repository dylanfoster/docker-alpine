@test "executes commands as root by default" {
  docker run -t "${DOCKER_IMAGE_NAME}:${BUILD_TAG}" whoami | grep "root"
}

@test "executes commands as 'vader'" {
  docker run -u vader -t "${DOCKER_IMAGE_NAME}:${BUILD_TAG}" whoami | grep "vader"
}
