
from fastapi import FastAPI
from taman_entity import TAMAN
from imu_interface import IMU

app = FastAPI()
taman = TAMAN()
imu = IMU()

@app.get("/")
def read_root():
    taman.emitir_pulso()
    imu.iniciar()
    return {"status": "ROWTS Avançado iniciado com sucesso"}

@app.get("/seed")
def get_seed():
    return {"seed_id": "0001", "content": "semente simbiótica inicial"}
