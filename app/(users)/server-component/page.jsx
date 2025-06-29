import Link from "next/link";
import { User, Hash } from "lucide-react";

const Server = async () => {
  const URL = "https://jsonplaceholder.typicode.com/posts?_limit=3";
  const res = await fetch(URL, {
    next: { revalidate: 60 },
  });

  if (!res.ok) {
    throw new Error("Failed to fetch posts.");
  }

  const posts = await res.json();

  return (
    <main className="pt-24 px-4 min-h-screen bg-gradient-to-b from-white to-slate-100">
      <h1 className="text-5xl font-bold text-gray-800 mb-2 tracking-tight">
        Server Component:
      </h1>
      <p className="text-gray-600 text-lg mb-10">
        This page is a modern Server Component example.
      </p>

      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8 mb-14">
        {posts.map((post) => (
          <div
            key={post.id}
            className="p-6 backdrop-blur-md bg-white/60 border border-gray-200 rounded-2xl shadow-lg hover:shadow-xl transition duration-300 transform hover:-translate-y-1 hover:scale-[1.02]"
          >
            <h2 className="text-xl font-semibold text-blue-800 mb-4 line-clamp-2">
              {post.title}
            </h2>

            <div className="flex items-center text-sm text-gray-700 mb-2 gap-2">
              <span className="inline-flex items-center gap-1 px-2 py-1 rounded-full bg-blue-100 text-blue-800">
                <User className="w-4 h-4" />
                User: {post.userId}
              </span>
            </div>
            <div className="flex items-center text-sm text-gray-700 mb-4 gap-2">
              <span className="inline-flex items-center gap-1 px-2 py-1 rounded-full bg-gray-100 text-gray-700">
                <Hash className="w-4 h-4" />
                Post: {post.id}
              </span>
            </div>

            <p className="text-gray-800 text-sm leading-relaxed line-clamp-4">
              {post.body}
            </p>
          </div>
        ))}
      </div>

      <div className="text-center">
        <Link
          href="/"
          className="inline-block px-8 py-3 bg-blue-700 text-white rounded-full shadow-md hover:bg-blue-800 transition-all duration-300"
        >
          Go to Home page
        </Link>
      </div>
    </main>
  );
};

export default Server;
