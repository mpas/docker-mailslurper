# docker-mailslurper

Docker image using MailSlurper which is a handy SMTP mail server useful for local and team application development. You can use this image to send mail to a SMTP host and MailSlurper provides the SMTP server and visual UI. For more information on MailSlurper please see [MailSlurper](http://http://mailslurper.com/).

## Usage

### Building the image
`$ docker build -t docker-mailslurper .`

### Running the image
`# docker run -it -p 2500:2500 -p 8080:8080 -p 8085:8085 --rm docker-mailslurper`

### MailSlurper Configuration
The image already contains a `slightly` modified MailSlurper config file (`config.json`). For more information how to configure MailSlurper please check [MailSlurper wiki](https://github.com/mailslurper/mailslurper/wiki)

```
{
    "wwwAddress": "0.0.0.0",
    "wwwPort": 8080,
    "serviceAddress": "0.0.0.0",
    "servicePort": 8085,
    "smtpAddress": "0.0.0.0",
    "smtpPort": 2500,
    "dbEngine": "SQLite",
    "dbHost": "",
    "dbPort": 0,
    "dbDatabase": "./mailslurper.db",
    "dbUserName": "",
    "dbPassword": "",
    "maxWorkers": 1000,
    "autoStartBrowser": false,
    "keyFile": "",
    "certFile": ""
}
```

When there is a need to provide an alternative config file then a local config can be mounted into the image.

Run the image using: 

```
    $ docker run \
    -v $PWD/custom-config.json:/opt/mailslurper/config.json \
    -p 2500:2500 -p 8080:8080 -p 8085:8085 \
    marcopas/docker-mailslurper
```

### Using Docker Compose
There is an assumption you have installed docker-compose!

`docker-compose up`

## License

[MIT](LICENSE.md)
