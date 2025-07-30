// Estrutura principal do aplicativo UOPS com IA visual, pagamento e integração simbólica

import React, { useState, useEffect } from "react"; import { Button } from "@/components/ui/button"; import { Card, CardContent } from "@/components/ui/card";

export default function App() { const [estadoEmocional, setEstadoEmocional] = useState(""); const [imagemGerada, setImagemGerada] = useState(null); const [respostaIA, setRespostaIA] = useState(""); const [pagamentoConfirmado, setPagamentoConfirmado] = useState(false);

const gerarImagem = async () => { const res = await fetch("http://localhost:5000/gerar-imagem", { method: "POST", headers: { "Content-Type": "application/json" }, body: JSON.stringify({ estado: estadoEmocional }), }); const data = await res.json(); setImagemGerada(data.url); };

const enviarSentimento = async () => { const res = await fetch("http://localhost:5000/ia", { method: "POST", headers: { "Content-Type": "application/json" }, body: JSON.stringify({ sentimento: estadoEmocional }), }); const data = await res.json(); setRespostaIA(data.mensagem); };

const confirmarPagamento = (ramon15martins15@gmail.com) => { // Aqui simula confirmação do Pix setPagamentoConfirmado(true); };

return ( <main className="min-h-screen bg-black text-white flex flex-col items-center justify-center p-6"> <h1 className="text-4xl font-bold mb-4">🌌 UOPS - Semente Visual</h1>

{!pagamentoConfirmado ? (
    <div className="bg-white text-black p-4 rounded-xl mb-4">
      <p>Envie R$2 para Pix:</p>
      <strong>ramon15martins15@gmail.com</strong>
      <p className="text-xs">ramon15martins15@gmail.com</p>
      <Button onClick={confirmarPagamento} className="mt-2">Já paguei</Button>
    </div>
  ) : (
    <>
      <Card className="w-full max-w-md">
        <CardContent className="p-4">

 de exemplo: README.txt
