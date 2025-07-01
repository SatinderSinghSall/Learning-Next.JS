"use client";

import { User, Users, Star, TrendingUp } from "lucide-react";
import { useSearchParams } from "next/navigation";
import { useEffect, useState } from "react";

const DataFetchClient = () => {
  const [userInfo, setUserInfo] = useState({});
  const searchParams = useSearchParams();
  const userName = searchParams.get("name");

  if (!userName) {
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

  useEffect(() => {
    const revealUserGender = async () => {
      const res = await fetch(`https://api.genderize.io/?name=${userName}`);
      const userData = await res.json();
      console.log(userData);
      setUserInfo(userData);
    };
    revealUserGender();
  }, []);

  if (!userInfo.gender) return null;

  const isMale = userInfo.gender === "male";
  const confidencePercentage = userInfo.probability * 100;

  return (
    <div className="min-h-screen bg-gradient-to-br from-purple-50 via-blue-50 to-indigo-100 flex items-center justify-center p-4">
      <div className="bg-white rounded-2xl shadow-2xl p-8 max-w-sm w-full relative overflow-hidden">
        {/* Background decoration */}
        <div
          className={`absolute top-0 right-0 w-32 h-32 ${
            isMale ? "bg-blue-100" : "bg-pink-100"
          } rounded-full -translate-y-16 translate-x-16 opacity-50`}
        ></div>
        <div
          className={`absolute bottom-0 left-0 w-24 h-24 ${
            isMale ? "bg-blue-50" : "bg-pink-50"
          } rounded-full translate-y-12 -translate-x-12 opacity-50`}
        ></div>

        <div className="relative z-10">
          {/* Avatar Section */}
          <div className="text-center mb-6">
            <div
              className={`w-24 h-24 mx-auto rounded-full flex items-center justify-center mb-4 ${
                isMale
                  ? "bg-gradient-to-br from-blue-400 to-blue-600"
                  : "bg-gradient-to-br from-pink-400 to-pink-600"
              } shadow-lg`}
            >
              <User className="w-12 h-12 text-white" strokeWidth={1.5} />
            </div>

            <h1 className="text-3xl font-bold text-gray-800 mb-2 capitalize">
              {userInfo.name}
            </h1>

            <div
              className={`inline-flex items-center px-4 py-2 rounded-full text-sm font-semibold ${
                isMale
                  ? "bg-blue-100 text-blue-800 border border-blue-200"
                  : "bg-pink-100 text-pink-800 border border-pink-200"
              }`}
            >
              <span
                className={`w-2 h-2 rounded-full mr-2 ${
                  isMale ? "bg-blue-500" : "bg-pink-500"
                }`}
              ></span>
              {userInfo.gender.charAt(0).toUpperCase() +
                userInfo.gender.slice(1)}
            </div>
          </div>

          {/* Stats Section */}
          <div className="space-y-4">
            {/* Confidence Bar */}
            <div className="bg-gray-50 rounded-lg p-4">
              <div className="flex items-center justify-between mb-2">
                <span className="text-sm font-medium text-gray-600 flex items-center">
                  <Star className="w-4 h-4 mr-1" />
                  Confidence
                </span>
                <span className="text-sm font-bold text-gray-800">
                  {confidencePercentage}%
                </span>
              </div>
              <div className="w-full bg-gray-200 rounded-full h-3">
                <div
                  className={`h-3 rounded-full transition-all duration-500 ${
                    isMale
                      ? "bg-gradient-to-r from-blue-400 to-blue-600"
                      : "bg-gradient-to-r from-pink-400 to-pink-600"
                  }`}
                  style={{ width: `${confidencePercentage}%` }}
                ></div>
              </div>
            </div>

            {/* Data Count */}
            <div className="bg-gray-50 rounded-lg p-4">
              <div className="flex items-center justify-between">
                <span className="text-sm font-medium text-gray-600 flex items-center">
                  <TrendingUp className="w-4 h-4 mr-1" />
                  Data Sample Size
                </span>
                <span className="text-sm font-bold text-gray-800">
                  {userInfo.count.toLocaleString()}
                </span>
              </div>
            </div>

            {/* Accuracy Indicator */}
            <div
              className={`rounded-lg p-4 border-2 ${
                confidencePercentage >= 90
                  ? "bg-green-50 border-green-200 text-green-800"
                  : confidencePercentage >= 70
                  ? "bg-yellow-50 border-yellow-200 text-yellow-800"
                  : "bg-red-50 border-red-200 text-red-800"
              }`}
            >
              <div className="flex items-center">
                <Users className="w-4 h-4 mr-2" />
                <span className="text-sm font-medium">
                  {confidencePercentage >= 90
                    ? "High Accuracy"
                    : confidencePercentage >= 70
                    ? "Moderate Accuracy"
                    : "Low Accuracy"}
                </span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default DataFetchClient;
