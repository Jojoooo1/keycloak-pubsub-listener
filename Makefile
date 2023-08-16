remove-image:
	docker rmi -f $$(docker images -q keycloak-with-event-listener) || true

package:
	mvn clean package

up:
	docker compose up -d

rm:
	docker compose stop
	docker compose rm -f

package-and-start: rm remove-image package up