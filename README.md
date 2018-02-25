A docker image wrapping Go code generator of protocol buffer

See https://hub.docker.com/r/alexhokl/protoc/

##### To Run

```sh
docker run -v ${PWD}:/home/app alexhokl/protoc --go_out=. *.proto
```
