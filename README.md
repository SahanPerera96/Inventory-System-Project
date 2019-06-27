# Inventory-System-Project

1. Config store repository -> https://github.com/PasinduSandakelum/inventory-system-config-store

# Informations about setup config store

## spring-cloud-config-store

spring-cloud-config-store is use for remotely access to the configuration files for updating purposes by
regarding to relevent profile and application name.

```bash
eg: profile= prod, dev, qa or the default 
    application name= item, stock or stack 
```
## Prerequisite

1.Please refer below link and download the particular Java Cryptography Extension (JCE) jar files
( https://www.oracle.com/technetwork/java/javase/downloads/jce-all-download-5170447.html.) and
put those jar files into the JRE security folder and restart the application.

2.application.yml of the <b>config server</b> must need another bootstrap.yml.
 ```bash
        eg: application.yml
        
                server:
                  port: 8091
                spring:
                  cloud:
                    config:
                      server:
                        git:
                          uri: https://github.com/PasinduSandakelum/inventory-system-config-store
                          search-paths:
                            - '*service'

                          force-pull: true 
 ```
 ```bash
          eg: bootstrap.yml
            
                encrypt:
                    key: web
 ```
3. Config consumer(your service) should have the "spring cloud config client" dependancy.

## Change the sensitive details of the configration files in repository

1. copy the password in to the post request body using the config server encrypt endpoint and generate the Hash value using the relevent encrypt key.
  ```bash
  eg:  encrypt-key: web
       config server encrypt endpoint= http://localhost:8091/encrypt 
       Body= 1qaz2wsx@
       Output= 957b3c8c1c83734b3e1dfb5ad6297248a852d1566bfcde488c3fb49e0a67cd09
  ```
2. Copy the hash value with the prefix " {cipher} " and replace with the previous plain password and commit in to repository 
    as <b>.properties</b> file
  ```bash
  eg:   ***If*** profile= prod ,application name= item
            then file name should be item-prod.properties
  ```
    
  ```bash
  ***content should be***  
        spring.datasource.url=jdbc:mysql://localhost:3306/invtDB?createDatabaseIfNotExist=true
        spring.datasource.username=root
        spring.datasource.password={cipher}2e44c3a8e713b765016e9726406e368208cfe1b0a4d85dbe4d4a6de79f7a6f30
        spring.driver-class-name=com.mysql.jdbc.Driver
  ```

## Config Consumer(Your Service) Setup


```bash
 eg:   ***If*** profile= dev ,application name= item and encrypt.key=web then
                application.yml of your service.                     
            
            spring:
              application:
                name: item
              profiles:
                active: dev
            encrypt:
              key: web
            security:
              oauth2:
                resource:
                  token-info-uri: http://localhost:8090/oauth/check_token
                client:
                  client-id: web
                  client-secret: web
    
```
```bash
    eg : bootstrap.yml looks like this.
            spring:
              cloud:
                config:
                  uri: http://localhost:8091   #***this is the config server running port***
```



## Help Desk

If there any issue feel free to contact us ;-D.


## License
[No]
