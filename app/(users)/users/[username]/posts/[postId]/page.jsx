"use client";

import { use } from "react";

const SingleProfilePost = (props) => {
  const user = use(props.params);
  console.log(user);

  return (
    <div>
      <main className="pt-24 px-4 min-h-screen bg-white">
        <h1 className="text-3xl font-bold text-gray-800 mb-4">
          Hello, {user.username}:
        </h1>
        <p className="text-gray-600 text-lg">The post id is: {user.postId}</p>
        <p className="text-gray-600 text-lg">
          This is a dynamic users post page.
        </p>
      </main>
    </div>
  );
};

export default SingleProfilePost;
