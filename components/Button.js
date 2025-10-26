export default function Button({ children, onClick }) {
  return (
    <button
      onClick={onClick}
      className="bg-green-500 text-white px-6 py-3 rounded-lg shadow hover:bg-green-600 transition"
    >
      {children}
    </button>
  );
}
