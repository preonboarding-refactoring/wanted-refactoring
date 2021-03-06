from fastapi import FastAPI
from starlette.middleware.cors import CORSMiddleware
from db import session
from model import Company

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


@app.get("/users")
def read_users():
    users = session.query(Company).all()
    return users
#
