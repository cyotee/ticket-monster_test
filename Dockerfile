### Set the base image to the one built before
FROM cyotee/eap6.4-appd

### File Author / Maintainer
MAINTAINER "Robert Greathouse" "cyotee@gmail.com"

### Add application to JBoss EAP
COPY app/ticket-monster.war $JBOSS_HOME/standalone/deployments/

ENV APPDYNAMICS_AGENT_APPLICATION_NAME=ticket-monster
ENV APPDYNAMICS_AGENT_TIER_NAME="Stage"
ENV APPDYNAMICS_AGENT_NODE_NAME="rhel-ose.vm"


