# How to execute Shibboleth Identity Provider
## Steps to follow
1. Download the source from Github repository**
   ```
   git clone https://github.com/SouliSun/shibboleth-idp.git
    ```
2. Go to where the configuration located**
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
## Configuration files you may want to modify
1. Adding your service provider Metadata
   - In order to do it you have to first to put in metadata folder, for example :
      ```
      nano idp/ext-conf/metadat/sp-metadata.xml
      ```
  
   - And also you got to add a reference to the metadata of your SP in **metadata-providers.xml**
      ```
      nano idp/ext-conf/conf/metadata-providers.xml
      ```
2. Modify ldap configuration
   - Basically we already using a openldap docker image which we mentionned already in docker compose. You can remove it and work with your own ldap server but First you have to, Modify ldap configuration file which is **ldap.properties**, as changing attributes like **idp.authn.LDAP.ldapURL**, **idp.authn.LDAP.baseDN** or **idp.authn.LDAP.bindDn** ...
       ```
      nano idp/ext-conf/conf/ldap.properties
      ```
3. Modify user ldap attributes that you want the idp to extract and release
   - You have to just to change user attributes in **attribute-resolver-full.xml**
     ```
     nano idp/ext-conf/conf/attribute-resolver-full.xml
     ```
4. Change templates of the idp
   - You can change images, design and the form of different views like **login interface**... by acceding to this files
     ```
     cd idp/ext-conf/webapp
     cd idp/ext-conf/views
      ```
     

