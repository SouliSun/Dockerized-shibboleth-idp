# How to execute Shibboleth Identity Provider
**Steps to follow**
1. Download the source from Github repository
   ```
   git clone https://github.com/SouliSun/shibboleth-idp.git
    ```
3. Go to where the configuration located
   ```
   cd idp/
   ```
5. Replace localhost with your own DNS
   ```
   ./replace_domain.sh your_domain_name ext-conf/
   ```
7. Build docker image
      ```
   ./build.sh
   ```
9. Run shibboleth IDP container
   ```
   docker compose up -d
   ```
**Configuration files you may want to modify**
