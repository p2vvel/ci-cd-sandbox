from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    return {
        "message": "Hello World",
        "version": "v1.1.0"
        }
