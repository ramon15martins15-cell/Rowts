import subprocess

# Lista de programas para ativar
programas = [
    "bot_instagram.py",
    "gerador_imagem.py",
    "responder_dm.py",
    # Adicione mais arquivos conforme seu projeto
]

def ativar_todos():
    for prog in programas:
        print(f"Ativando {prog}...")
        subprocess.Popen(["python", prog])  # Executa em paralelo

if __name__ == "__main__":
    print("Iniciando todos os sistemas de IA...")
    ativar_todos()
    print("Todos os programas foram ativados.")
