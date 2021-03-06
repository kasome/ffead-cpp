docker rmi -f sumeetchhetri/ffead-cpp-4.0-base:1.0
docker build -f ffead-cpp-base.dockerfile -t sumeetchhetri/ffead-cpp-4.0-base:1.0 .
docker push sumeetchhetri/ffead-cpp-4.0-base:1.0

docker rmi -f sumeetchhetri/ffead-cpp-4.0-rust-base:1.0
docker build -f ffead-cpp-rust-base.dockerfile -t sumeetchhetri/ffead-cpp-4.0-rust-base:1.0 .
docker push sumeetchhetri/ffead-cpp-4.0-rust-base:1.0

docker rmi -f sumeetchhetri/ffead-cpp-4.0-v-base:1.0
docker build -f ffead-cpp-v-base.dockerfile -t sumeetchhetri/ffead-cpp-4.0-v-base:1.0 .
docker push sumeetchhetri/ffead-cpp-4.0-v-base:1.0

docker rmi -f sumeetchhetri/ffead-cpp-4.0-java-base:1.0
docker build -f ffead-cpp-java-base.dockerfile -t sumeetchhetri/ffead-cpp-4.0-java-base:1.0 .
docker push sumeetchhetri/ffead-cpp-4.0-java-base:1.0

docker rmi -f sumeetchhetri/ffead-cpp-4.0-rust-rocket-base:1.0
docker build -f ffead-cpp-rust-rocket-base.dockerfile -t sumeetchhetri/ffead-cpp-4.0-rust-rocket-base:1.0 .
docker push sumeetchhetri/ffead-cpp-4.0-rust-rocket-base:1.0
