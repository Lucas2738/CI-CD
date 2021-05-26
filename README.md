# CI-CD

# 1 - Build Jenkins image
- docker build -t jenkins/jenkins-maven:latest .

# 2 - Setup
- Access to nexus with username: admin and password: admin123
- Access sonarqube with username: admin and password: admin than change password to: admin123 then click on My Account/Security insert jenkins in Generate Tokens and click generate (copy token that will be used in jenkins pipeline)
- Access jenkins with password recovered from CI-CD/jenkins/data/secrets/initialAdminPassword and install following plugins:
	- Install suggested plugin
	- Create user with username: admin and password admin123
	- Install pipeline-utility-steps plugin
	- Install Nexus Artifact Uploader plugin
	- Add credential in Manage jenkins/Manage Credentials/Jenkins/Global credentials (unrestricted)/Add Credentials ad insert username:admin password:admin123 id:nexus

# 3 - Pipeline
- New Item
- Enter "Demo" as item name 
- Select "Pipeline"
- Copy contents of CI-CD/jenkins/Jenkinsfile into script section
- past sonarqube token copied erlier in -Dsonar.login=
- set the submodule of Complete project you want build specifing folder in MOUDLE_HOME (for ex. MOUDLE_HOME=demo/)
- Launch build
- Go to Manage jenkins/ In-process Script Approval and approve
- Relaunch build
