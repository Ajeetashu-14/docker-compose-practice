## Manual installation
    - Created a repo
    - Npm init -y
    - Npm install typescript
    - Npx tsc --init
    - Npm install prisma express @types/express
    - Write an express server with get and post request
    - Npx prisma init
    - docker run -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432:5432 postgres
    - npx prisma migrate dev
    - Npx prisma geneate(to generate  client)
    - Then add CRUD functionality

## Docker installation
    - Install docker
    - Start postgres
        -docker run --network user_project_nw --name postgres -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432:5432 postgres
    - Build the image - `docker build --network=host -t user-project .`
    - Start the image - `docker run -e DATABASE_URL=postgresql://postgres:mysecretpassword@postgres:5432/postgres --network user_project_nw -p 3000:3000 user-project`

## Docker Compose installation steps
    - Install docker, docker-compose 
    - Run `docker-compose up`