from fastapi import FastAPI

app = FastAPI(title="OctoFit Tracker")

@app.get("/")
async def read_root():
    return {"message": "Welcome to OctoFit Tracker"}

@app.get("/health")
async def health():
    return {"status": "ok"}
