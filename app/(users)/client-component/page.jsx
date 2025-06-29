"use client";

import { useEffect, useState } from "react";

const URL = "https://jsonplaceholder.typicode.com/posts";

const Clint = () => {
  const [postData, setPostData] = useState([]);
  const [showModal, setShowModal] = useState(false);
  const [loading, setLoading] = useState(true);
  const [selectedPost, setSelectedPost] = useState(null);

  const handleClose = () => {
    setShowModal(false);
    setSelectedPost(null);
  };

  const handleClick = (post) => {
    setSelectedPost(post);
    setShowModal(true);
  };

  useEffect(() => {
    (async () => {
      try {
        const res = await fetch(URL);
        if (!res.ok) throw new Error("Failed to fetch posts");
        const data = await res.json();
        setPostData(data);
      } catch (error) {
        console.error("Error fetching data:", error);
      } finally {
        setLoading(false);
      }
    })();
  }, []);

  return (
    <main className="pt-24 px-4 min-h-screen bg-white">
      <h1 className="text-3xl font-bold text-gray-800 mb-4">
        Clint Component:
      </h1>
      <p className="text-gray-600 text-lg mb-6">
        This page displays all fetched posts.
      </p>

      {/* Modal */}
      {showModal && selectedPost && (
        <div className="fixed inset-0 bg-white/30 backdrop-blur-sm flex items-center justify-center z-50">
          <div className="bg-white rounded-2xl shadow-2xl p-8 w-[90%] max-w-xl text-left border border-gray-200">
            <h2 className="text-2xl font-bold text-gray-800 mb-2">
              {selectedPost.title}
            </h2>
            <p className="text-gray-600 mb-4 whitespace-pre-line">
              {selectedPost.body}
            </p>
            <div className="flex justify-between items-center mt-4 text-xs text-gray-500">
              <span className="bg-gray-100 text-gray-700 px-2 py-1 rounded-full">
                🆔 Post #{selectedPost.id}
              </span>
              <span className="bg-blue-100 text-blue-700 px-2 py-1 rounded-full">
                👤 User {selectedPost.userId}
              </span>
            </div>
            <button
              className="cursor-pointer mt-6 px-5 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition"
              onClick={handleClose}
            >
              Close
            </button>
          </div>
        </div>
      )}

      {/* Posts */}
      <h1 className="text-2xl sm:text-3xl font-bold text-gray-800 mb-6 border-b pb-2 border-gray-200">
        📰 All Posts
      </h1>

      {loading ? (
        <ul className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6 mb-10 animate-pulse">
          {Array.from({ length: 6 }).map((_, i) => (
            <li
              key={i}
              className="bg-white rounded-2xl shadow-md border border-gray-200 p-6 flex flex-col justify-between space-y-4"
            >
              <div className="space-y-2">
                <div className="h-5 bg-gray-300 rounded w-3/4" />
                <div className="h-4 bg-gray-200 rounded w-full" />
                <div className="h-4 bg-gray-200 rounded w-5/6" />
              </div>
              <div className="flex justify-between items-center mt-4">
                <div className="h-6 w-20 bg-gray-200 rounded-full" />
                <div className="h-6 w-20 bg-gray-200 rounded-full" />
              </div>
            </li>
          ))}
        </ul>
      ) : (
        <ul className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6 mb-10">
          {postData.map((post) => (
            <li
              key={post.id}
              onClick={() => handleClick(post)}
              className="cursor-pointer bg-white rounded-2xl shadow-md hover:shadow-lg border border-gray-200 transition-all duration-200 p-6 flex flex-col justify-between"
            >
              <div className="mb-4">
                <h3 className="text-xl font-semibold text-gray-800 mb-2">
                  {post.title}
                </h3>
                <p className="text-gray-600 text-sm whitespace-pre-line">
                  {post.body}
                </p>
              </div>
              <div className="flex justify-between items-center mt-4 text-xs text-gray-500">
                <span className="bg-gray-100 text-gray-700 px-2 py-1 rounded-full">
                  🆔 Post #{post.id}
                </span>
                <span className="bg-blue-100 text-blue-700 px-2 py-1 rounded-full">
                  👤 User {post.userId}
                </span>
              </div>
            </li>
          ))}
        </ul>
      )}
    </main>
  );
};

export default Clint;
