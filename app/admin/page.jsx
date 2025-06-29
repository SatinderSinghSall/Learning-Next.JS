"use client";

import { Users, BarChart2, Settings } from "lucide-react";

export default function AdminHome() {
  return (
    <div className="min-h-screen bg-gray-100">
      {/* Header */}
      <header className="bg-white shadow-md py-8 px-6 border-b border-gray-200">
        <div className="max-w-7xl mt-15 mx-auto">
          <h1 className="text-4xl font-extrabold text-gray-900">
            Admin Dashboard
          </h1>
          <p className="text-base text-gray-600 mt-2">
            Manage and monitor the platform
          </p>
        </div>
      </header>

      {/* Main Content */}
      <main className="py-14 px-6 sm:px-10 lg:px-14 max-w-7xl mx-auto">
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-10">
          {/* Card - Users */}
          <div className="bg-white rounded-3xl shadow-xl p-6 transition-transform duration-300 hover:scale-105 cursor-pointer group">
            <div className="flex items-center space-x-4 mb-5">
              <div className="bg-indigo-600 text-white p-3 rounded-full group-hover:bg-indigo-700 transition">
                <Users className="w-6 h-6" />
              </div>
              <h2 className="text-xl font-semibold text-gray-900">Users</h2>
            </div>
            <p className="text-gray-600 text-sm">
              Manage all registered users, their roles, and activity logs.
            </p>
          </div>

          {/* Card - Analytics */}
          <div className="bg-white rounded-3xl shadow-xl p-6 transition-transform duration-300 hover:scale-105 cursor-pointer group">
            <div className="flex items-center space-x-4 mb-5">
              <div className="bg-green-600 text-white p-3 rounded-full group-hover:bg-green-700 transition">
                <BarChart2 className="w-6 h-6" />
              </div>
              <h2 className="text-xl font-semibold text-gray-900">Analytics</h2>
            </div>
            <p className="text-gray-600 text-sm">
              Track KPIs, page views, and system performance metrics.
            </p>
          </div>

          {/* Card - Settings */}
          <div className="bg-white rounded-3xl shadow-xl p-6 transition-transform duration-300 hover:scale-105 cursor-pointer group">
            <div className="flex items-center space-x-4 mb-5">
              <div className="bg-yellow-500 text-white p-3 rounded-full group-hover:bg-yellow-600 transition">
                <Settings className="w-6 h-6" />
              </div>
              <h2 className="text-xl font-semibold text-gray-900">Settings</h2>
            </div>
            <p className="text-gray-600 text-sm">
              Update configurations, integrations, and admin preferences.
            </p>
          </div>
        </div>
      </main>
    </div>
  );
}
