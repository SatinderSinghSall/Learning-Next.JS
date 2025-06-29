import { useState } from "react";

const Counter = () => {
  const [count, setCount] = useState(0);

  return (
    <main className="pt-24 px-4 min-h-screen bg-gradient-to-br from-white to-gray-100 flex flex-col items-center">
      <h1 className="text-4xl font-bold text-gray-800 mb-4">Counter App</h1>
      <p className="text-gray-600 text-lg mb-6">
        Simple and modern counter built with React
      </p>

      <div className="flex items-center space-x-4">
        <button
          onClick={() => setCount(count - 1)}
          className="px-4 py-2 bg-red-500 text-white rounded-xl shadow hover:bg-red-600 transition"
        >
          -
        </button>
        <span className="text-2xl font-semibold text-gray-700">{count}</span>
        <button
          onClick={() => setCount(count + 1)}
          className="px-4 py-2 bg-green-500 text-white rounded-xl shadow hover:bg-green-600 transition"
        >
          +
        </button>
      </div>

      <button
        onClick={() => setCount(0)}
        className="mt-6 px-4 py-2 bg-gray-300 text-gray-800 rounded-xl hover:bg-gray-400 transition"
      >
        Reset
      </button>
    </main>
  );
};

export default Counter;
