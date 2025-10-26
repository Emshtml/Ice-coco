export default function Header() {
  return (
    <header className="bg-green-500 text-white py-4 shadow-md">
      <div className="container mx-auto flex justify-between items-center px-4">
        <h1 className="text-2xl font-bold">Coco Verde Fresquinho 🥥</h1>
        <nav>
          <a href="#produtos" className="mx-2 hover:underline">Produtos</a>
          <a href="#contato" className="mx-2 hover:underline">Contato</a>
        </nav>
      </div>
    </header>
  );
}
