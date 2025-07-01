import { Suspense } from "react";
import DataCard from "./DataCard";
import Load from "./Load";

const DataFetchServer = async (props) => {
  const searchParams = await props.searchParams;
  const userName = searchParams.name;

  const res = await fetch(`https://api.genderize.io/?name=${userName}`);
  const data = await res.json();
  console.log(data);

  if (!userName || userName === "") {
    return (
      <div className="min-h-screen bg-gradient-to-br from-purple-100 via-blue-100 to-indigo-200 flex items-center justify-center p-6">
        <main className="bg-white rounded-3xl shadow-xl p-8 sm:p-10 w-full max-w-md transition-all">
          <div className="text-center space-y-4">
            <div className="flex justify-center">
              <div className="bg-indigo-100 text-indigo-600 rounded-full p-3">
                <svg
                  className="w-6 h-6"
                  fill="none"
                  stroke="currentColor"
                  strokeWidth="2"
                  viewBox="0 0 24 24"
                >
                  <path
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    d="M12 11c0-.56-.44-1-1-1s-1 .44-1 1 .44 1 1 1 1-.44 1-1zm0 0v2m4 0v2a4 4 0 11-8 0v-2m4 0V9a4 4 0 10-8 0v2"
                  />
                </svg>
              </div>
            </div>
            <h1 className="text-2xl font-extrabold text-gray-800">
              No Name Provided
            </h1>
            <p className="text-gray-600 text-sm">
              Please add{" "}
              <span className="font-mono bg-gray-100 px-1 py-0.5 rounded">
                ?name=yourname
              </span>{" "}
              to the URL
            </p>
          </div>
        </main>
      </div>
    );
  }

  return (
    <div>
      <Suspense fallback={<Load />}>
        <DataCard userName={userName} />
      </Suspense>
    </div>
  );
};

export default DataFetchServer;
