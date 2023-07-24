# How to execute Shibboleth Identity Provider
**Steps to follow**
1. Download the source from Github repository
   ```
   git clone https://github.com/SouliSun/shibboleth-idp.git
    ```
2. Go to where the configuration located
   ```
   cd idp/
   ```
3. Replace localhost with your own DNS
   ```
   ./replace_domain.sh your_domain_name ext-conf/
   ```
4. Build docker image
      ```
   ./build.sh
   ```
5. Run shibboleth IDP container
   ```
   docker compose up -d
   ```
**Configuration files you may want to modify**
1. Adding your service provider Metadata
   - In order to do that you have to add the metadata in **metadata-provider.xml**
