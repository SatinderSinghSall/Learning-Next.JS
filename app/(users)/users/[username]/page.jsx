const SingleProfile = async (props) => {
  const user = await props.params;
  console.log(user);

  return (
    <div>
      <main className="pt-24 px-4 min-h-screen bg-white">
        <h1 className="text-3xl font-bold text-gray-800 mb-4">
          Hello, {user.username}:
        </h1>
        <p className="text-gray-600 text-lg">This is a dynamic users page.</p>
      </main>
    </div>
  );
};

export default SingleProfile;
