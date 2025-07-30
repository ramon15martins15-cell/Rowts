<!DOCTYPE html><html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>🌌 Sublimação~Martins</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      background: radial-gradient(circle, #000000, #1a1a1a);
      color: white;
      font-family: 'Courier New', monospace;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      height: 100vh;
      overflow: hidden;
    }
    h1 {
      font-size: 2.5rem;
      margin-bottom: 1rem;
      text-align: center;
      background: linear-gradient(45deg, #6af, #f6f, #6af);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
    }
    .seed-button {
      padding: 1rem 2rem;
      background: rgba(255, 255, 255, 0.1);
      border: 1px solid #fff;
      color: white;
      font-size: 1.2rem;
      border-radius: 10px;
      cursor: pointer;
      transition: all 0.3s ease;
    }
    .seed-button:hover
