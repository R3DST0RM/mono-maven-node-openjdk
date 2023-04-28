# Docker Container with Mono, Maven, Node and OpenJDK

An Ubuntu docker container with Java, Maven, Mono and NodeJS to help you build your web applications. This image can be used by a CI/CD pipeline to build monolithic applications. It's also helpful to build microservices with just one image.

If you are missing an SDK or tool, which should be bundled within this container feel free to open a PR.

## Installed versions (latest image)

| Library/Tool | Version       |
|--------------|---------------|
| Node         | 18.16.0       |
| npm          | 9.5.1         |
| OpenJDK      | 17.0.6        |
| Maven        | 3.9.1         |
| Mono         | 6.12.0.182    |
| Ubuntu       | 22.10 (Kinetic) |

# Usage 

Feel free to clone this repo and build the image yourself.

That being said, there are two options, either pull a pre-compiled image from Docker Hub.

### Pre-Compiled Image

You can get the `Docker` Image from the repository here: https://hub.docker.com/r/r3dst0rm/mono-maven-node-openjdk

Use this command to pull the image
```bash
docker pull r3dst0rm/mono-maven-node-openjdk
```

### Build manually

In order to build the container properly run the following command:

```bash
docker build -f Dockerfile -t <YOUR_TAG> .
```

## LICENSE

MIT

## Previous versions

Below you will find a list of docker tags and their respective installed versions of the above mentioned tools.

<details>
  <summary>2.2.0</summary>

This release contains the following versions

| Library/Tool | Version       |
|--------------|---------------|
| Node         | 16.17.0       |
| npm          | 8.15.0        |
| OpenJDK      | 11.0.16       |
| Maven        | 3.6.3         |
| Mono         | 6.12.0.182    |
| Ubuntu       | 20.04 (Focal) |
</details>

<details>
  <summary>2.1.0</summary>

This release contains the same versions as before, the only difference is that Ubuntu 20.04 is now used.

| Library/Tool | Version    |
|---------|------------|
| Node    | 16.13.2    |
| npm     | 8.1.2      |
| OpenJDK | 11.0.13    |
| Maven   | 3.6.0      |
| Mono    | 6.12.0.122 |
| Ubuntu  | 20.04 (Focal) |
</details>

<details>
  <summary>2.0.0</summary>

| Library/Tool | Version      |
|---------|--------------|
| Node    | 16.13.2      |
| npm     | 8.1.2        |
| OpenJDK | 11.0.13      |
| Maven   | 3.6.0        |
| Mono    | 6.12.0.122   |
| Ubuntu  | 18.04 |
</details>

<details>
  <summary>1.0.0</summary>

| Library/Tool | Version |
|---------|---------|
| Node    | 12.22.9  |
| npm     | 6.14.15   |
| OpenJDK | 11.0.13  |
| Maven   | 3.6.0   |
| Mono    | 6.12.0.122     |
| Ubuntu  | 18.04 |
</details>
