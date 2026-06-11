set shell := ["bash", "-cu"]

deploy:
    docker compose up -d --build

logs:
    docker compose logs -f

shell:
    docker exec -it mirror-leech-telegram-bot-app-1 bash

status:
    docker compose ps

update:
    git fetch upstream
    git merge upstream/master
    docker compose up -d --build
