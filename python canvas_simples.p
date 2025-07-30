import tkinter as tk

def iniciar_canvas():
    # Janela principal
    janela = tk.Tk()
    janela.title("Canvas de Desenho Simples")
    janela.geometry("800x600")

    # Canvas onde o desenho ocorre
    canvas = tk.Canvas(janela, bg="white")
    canvas.pack(fill=tk.BOTH, expand=True)

    # Variáveis para armazenar a posição anterior do mouse
    linha = {"x": 0, "y": 0}

    def pressionar_mouse(evento):
        linha["x"] = evento.x
        linha["y"] = evento.y

    def mover_mouse(evento):
        x1, y1 = linha["x"], linha["y"]
        x2, y2 = evento.x, evento.y
        canvas.create_line(x1, y1, x2, y2, fill="black", width=2)
        linha["x"] = x2
        linha["y"] = y2

    def limpar_canvas():
        canvas.delete("all")

    # Bind de eventos do mouse
    canvas.bind("<Button-1>", pressionar_mouse)
    canvas.bind("<B1-Motion>", mover_mouse
