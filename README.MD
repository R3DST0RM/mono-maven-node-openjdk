# Container with Mono, Maven, Node and OpenJDK

An Ubuntu 18.04 docker container with Java (openJDK) 11, Maven 3.x and Node 12

## Versions

| Library | Version |
|---------|---------|
| Node    | 12.6.0  |
| npm     | 6.9.0   |
| OpenJDK | 11.0.3  |
| Maven   | 3.6.0   |
| Mono    | 6     |

## Availability

You can get the `Docker` Image from the repository here: https://hub.docker.com/r/r3dst0rm/mono-maven-node-openjdk

Use this command to pull the image
```
docker pull r3dst0rm/mono-maven-node-openjdk
```

# Build

In order to build the container properly run the following command:

```bash
docker build -f Dockerfile -t <YOUR_TAG> .
```
