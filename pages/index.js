import Layout from "../components/Layout";
import Button from "../components/Button";

export default function Home() {
  const handleComprar = () => {
    alert("Produto adicionado ao carrinho!");
  };

  return (
    <Layout>
      <section className="text-center mb-12">
        <h2 className="text-4xl font-bold mb-4">Coco Verde Fresquinho 🥥</h2>
        <p className="text-lg text-gray-700">Natural, geladinho e direto da fazenda para você!</p>
      </section>

      <section id="produtos" className="grid md:grid-cols-2 gap-8 items-center">
        <img src="/coco.jpg" alt="Coco Verde" className="rounded-lg shadow-md" />
        <div>
          <h3 className="text-2xl font-bold mb-2">Coco Verde Premium</h3>
          <p className="mb-4 text-gray-700">
            Aproveite a refrescância e os nutrientes do coco verde. Ideal para hidratação natural e sabor delicioso.
          </p>
          <p className="text-xl font-semibold mb-4">R$ 5,00 cada</p>
          <Button onClick={handleComprar}>Comprar Agora</Button>
        </div>
      </section>

      <section id="contato" className="mt-12 text-center">
        <h3 className="text-2xl font-bold mb-4">Entre em Contato</h3>
        <p>📞 WhatsApp: (11) 91234-5678</p>
        <p>📍 Entregamos na região de São Paulo</p>
      </section>
    </Layout>
  );
}
