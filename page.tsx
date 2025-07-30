
'use client'
import Image from 'next/image'

export default function Works() {
  const activateSeed = () => {
    alert('🌱 Semente ativada! Nova arte sendo gerada...');
  }

  return (
    <main className="min-h-screen flex flex-col items-center justify-center bg-black text-white relative">
      <Image
        src="/bg-visual.jpg"
        alt="Visual de fundo"
        fill
        className="absolute z-0 object-cover opacity-40"
      />
      <div className="z-10 text-center space-y-6 px-4">
        <h1 className="text-5xl font-bold tracking-wider">🌱 ROWTS</h1>
        <p className="text-lg">Toque na semente para iniciar sua jornada artística transcendental</p>
        <button onClick={activateSeed}>
          <Image
            src="/seed.png"
            alt="Semente mágica"
            width={160}
            height={160}
            className="mx-auto animate-pulse hover:scale-110 transition-transform duration-300 cursor-pointer"
          />
        </button>
      </div>
    </main>
  )
}
