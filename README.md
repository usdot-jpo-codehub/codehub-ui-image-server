# codehub-ui-image-server

CodeHub UI Image Server is a web server to serve as central location/service for images mainly used by codehub-ui.

## Usage
Once the application is running on a configured the user interface should be accessible through the usage of a Web Browser application.

## File Manifest
* entrypoint.sh: Shell script that receives the environment variable related to the proxy_pass parameter to be used by nginx.
* nginx.template.conf: Nginx configuration template that is used by the entrypoint.sh script to generate the final nginx configuration file.
* Dockerfile: Docker image definition file
* LICENSE: License file


## Development setup
1) Docker
2) Target URL to be used by Nginx for the proxy pass operation.
3) Clone the repository from https://github.com/usdot-jpo-codehub/codehub-ui-image-server
4) Build a [Docker](https://www.docker.com/) image
```bash
  docker build -t codehub-ui-image-server:latest .
```
5) Execute a [Docker](https://www.docker.com/) using the image built in the previous step.

The following command with the correct values for the environment variable will start a Docker container.
```bash
docker run --rm -d -p 8080:80 \
-e PROXY_PASS_S3='proxy_pass "http://localhost:8085";' \ codehub-ui-image-server:latest

```

## Release History
* 1.0.0
  * Initial version


## Contact information
Joe Doe : X@Y

Distributed under APACHE 2.0 license. See *LICENSE* for more information

## Contributing
1. Fork it (https://github.com/usdot-jpo-codehub/codehub-ui-image-server/fork)
2. Create your feature branch (git checkout -b feature/fooBar)
3. Commit your changes (git commit -am 'Add some fooBar')
4. Push to the branch (git push origin feature/fooBar)
5. Create a new Pull Request

## Known Bugs
*

## Credits and Acknowledgment
Thank you to the Department of Transportation for funding to develop this project.

## CODE.GOV Registration Info
* __Agency:__ DOT
* __Short Description:__ CodeHub UI Image Server.
* __Status:__ Beta
* __Tags:__ CodeHub, DOT, Javascript, Nginx
* __Labor Hours:__
* __Contact Name:__
* __Contact Phone:__
