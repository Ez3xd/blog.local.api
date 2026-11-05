# blog.local — Contenedor Express + TypeScript (Clase 19 GSW)

Reverse proxy con Apache: Apache (puerto 80) → blog.local (puerto 3000).

## Rutas
- GET /saludo?nombre=X
- GET /health
- GET /info
- GET /cotizacion
- GET /articulos
- GET /articulos/:id
- POST /articulos        { titulo, contenido, autor }
- PUT  /articulos/:id
- DELETE /articulos/:id

## Local
    npm install
    npm run build
    npm start

## Docker
    docker build -t blog-local .
    docker run -d --name nodo1 -p 9100:9000 blog-local
    curl.exe http://localhost:9100/health