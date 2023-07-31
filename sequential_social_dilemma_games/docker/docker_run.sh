docker run -it \
       --user=$(id -u $USER):$(id -g $USER) \
       --env="DISPLAY" \
       -v="/etc/group:/etc/group:ro" \
       -v="/etc/passwd:/etc/passwd:ro" \
       -v="/etc/shadow:/etc/shadow:ro" \
       -v="/etc/sudoers.d:/etc/sudoers.d:ro" \
       -v="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
       -v /:/host \
       -v $(dirname $(pwd)):/project multi-agent-empathy:latest