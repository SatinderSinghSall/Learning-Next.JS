const Blog = async (props) => {
  const { slug } = await props.params;
  console.log(slug);

  return (
    <main className="pt-24 px-4 min-h-screen bg-white">
      <h1 className="text-3xl font-bold text-gray-800 mb-4">Blogs Page:</h1>
      <p className="text-gray-600 text-lg">This is a Blogs page.</p>
    </main>
  );
};

export default Blog;
