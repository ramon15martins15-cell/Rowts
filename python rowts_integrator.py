import os
import subprocess

# 👉 Configurações
GIT_REPO = "https://github.com/seu-usuario/seu-repositorio.git"  # Altere aqui
FOLDER_NAME = "rowts_repo"

# 🧠 Se pasta já existe, faz pull. Senão, clona.
if os.path.exists(FOLDER_NAME):
    print(f"🔄 Atualizando {FOLDER_NAME}...")
    subprocess.run(["git", "-C", FOLDER_NAME, "pull"])
else:
    print(f"📦 Clonando repositório em {FOLDER_NAME}...")
    subprocess.run(["git", "clone", GIT_REPO, FOLDER_NAME])

print("✅ Integração concluída.")
