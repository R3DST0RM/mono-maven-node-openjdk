# Docker Container with Mono, Maven, Node and OpenJDK

An Ubuntu 18.04 docker container with Java, Maven, Mono and NodeJS to help you build your web applications. This image can be used by a CI/CD pipeline to build monolithic applications. It's also helpful to build microservices with just one image.

If you are missing a SDK or tool, which should be bundled within this container feel free to open a PR.

## Installed versions

| Library/Tool | Version |
|---------|---------|
| Node    | 12.22.9  |
| npm     | 6.14.15   |
| OpenJDK | 11.0.13  |
| Maven   | 3.6.0   |
| Mono    | 6.12.0.122     |

## Download

You can get the `Docker` Image from the repository here: https://hub.docker.com/r/r3dst0rm/mono-maven-node-openjdk

Use this command to pull the image
```
docker pull r3dst0rm/mono-maven-node-openjdk
```

## Build manually

In order to build the container properly run the following command:

```bash
docker build -f Dockerfile -t <YOUR_TAG> .
```

# LICENSE

MIT
