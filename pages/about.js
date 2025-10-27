import Link from "next/link";

export default function About() {
  return (
    <div className="min-h-screen flex flex-col items-center justify-center bg-gradient-to-b from-green-100 to-white p-6">
      <h1 className="text-4xl font-bold text-green-800 mb-4">Sobre o Ice Coco 🥥</h1>
      <p className="text-lg text-green-700 max-w-xl text-center mb-6">
        O Ice Coco é a melhor forma de se refrescar com coco verde natural, geladinho e direto da fonte.
        Nosso site foi feito para facilitar a compra online e levar a experiência do coco fresco para você.
      </p>

      <p className="text-green-700 max-w-xl text-center mb-6">
        Aqui você encontra informações sobre nosso processo de seleção, sustentabilidade e amor pelo produto natural.
      </p>

      <Link href="/">
        <a className="px-6 py-3 bg-green-500 text-white font-semibold rounded-lg hover:bg-green-600 transition">
          Voltar para a Home
        </a>
      </Link>
    </div>
  );
}
