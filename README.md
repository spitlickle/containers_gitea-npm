
## containers_gitea-npm

*Template for spawning docker containers gitea+postgres+adminer & npm*
depends: docker

Exposes gitea on port 3000, nginx on 80, 443. npm for nginx on 81 (change default password), adminer on 81

1. Change default postgres password in docker-compose.yml
2. bash create-dirs.sh
3. docker-compose up -d
