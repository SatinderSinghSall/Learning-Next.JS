"use client";

import {
  Users,
  BarChart2,
  Settings,
  Activity,
  Cpu,
  Server,
} from "lucide-react";

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
      <main className="py-14 px-6 sm:px-10 lg:px-14 max-w-7xl mx-auto space-y-14">
        {/* Top Cards */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
          <KPICard
            icon={<Users className="w-6 h-6" />}
            title="Total Users"
            value="3,245"
            color="indigo"
          />
          <KPICard
            icon={<Activity className="w-6 h-6" />}
            title="Active Sessions"
            value="192"
            color="green"
          />
          <KPICard
            icon={<Cpu className="w-6 h-6" />}
            title="CPU Usage"
            value="57%"
            color="red"
          />
          <KPICard
            icon={<Server className="w-6 h-6" />}
            title="Server Status"
            value="Online"
            color="yellow"
          />
        </div>

        {/* Functional Cards */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-10">
          <AdminCard
            icon={<Users className="w-6 h-6" />}
            color="indigo"
            title="Users"
            description="Manage all registered users, their roles, and activity logs."
          />
          <AdminCard
            icon={<BarChart2 className="w-6 h-6" />}
            color="green"
            title="Analytics"
            description="Track KPIs, page views, and system performance metrics."
          />
          <AdminCard
            icon={<Settings className="w-6 h-6" />}
            color="yellow"
            title="Settings"
            description="Update configurations, integrations, and admin preferences."
          />
        </div>

        {/* Activity Log */}
        <section className="bg-white rounded-3xl shadow-xl p-6">
          <h2 className="text-2xl font-semibold text-gray-900 mb-4">
            Recent Activity
          </h2>
          <ul className="divide-y divide-gray-200 text-sm text-gray-700">
            <li className="py-2">
              🟢 User <strong>alice</strong> logged in
            </li>
            <li className="py-2">
              🔧 System settings updated by <strong>admin</strong>
            </li>
            <li className="py-2">📈 New report generated for May 2025</li>
            <li className="py-2">
              📝 User <strong>bob</strong> edited a post
            </li>
          </ul>
        </section>

        {/* System Summary */}
        <section className="grid grid-cols-1 lg:grid-cols-2 gap-6">
          <div className="bg-white rounded-3xl shadow-xl p-6">
            <h2 className="text-2xl font-semibold text-gray-900 mb-4">
              System Overview
            </h2>
            <ul className="space-y-3 text-sm text-gray-700">
              <li>
                🚀 Uptime: <strong>99.98%</strong> this month
              </li>
              <li>
                💾 Disk Usage: <strong>72%</strong> used
              </li>
              <li>
                📡 Network Traffic: <strong>4.3 TB</strong> transferred
              </li>
              <li>
                🧪 Version: <strong>v1.4.7</strong>
              </li>
            </ul>
          </div>
          <div className="bg-white rounded-3xl shadow-xl p-6">
            <h2 className="text-2xl font-semibold text-gray-900 mb-4">
              Notifications
            </h2>
            <ul className="space-y-3 text-sm text-gray-700">
              <li>✅ All systems operational</li>
              <li>⚠️ Scheduled maintenance on July 2, 2025</li>
              <li>🔒 Security patch v1.4.7 applied</li>
            </ul>
          </div>
        </section>
      </main>
    </div>
  );
}

// KPI Card Component (JS Version)
function KPICard({ icon, title, value, color }) {
  const bgColor = `bg-${color}-100 text-${color}-700`;
  return (
    <div
      className={`rounded-3xl shadow-md p-5 flex items-center justify-between ${bgColor}`}
    >
      <div>
        <h3 className="text-sm font-medium">{title}</h3>
        <p className="text-2xl font-bold">{value}</p>
      </div>
      <div className={`p-2 rounded-full bg-${color}-200`}>{icon}</div>
    </div>
  );
}

// Admin Card Component (JS Version)
function AdminCard({ icon, color, title, description }) {
  const bgColor = `bg-${color}-600`;
  const hoverColor = `group-hover:bg-${color}-700`;

  return (
    <div className="bg-white rounded-3xl shadow-xl p-6 transition-transform duration-300 hover:scale-105 cursor-pointer group">
      <div className="flex items-center space-x-4 mb-5">
        <div
          className={`${bgColor} text-white p-3 rounded-full transition ${hoverColor}`}
        >
          {icon}
        </div>
        <h2 className="text-xl font-semibold text-gray-900">{title}</h2>
      </div>
      <p className="text-gray-600 text-sm">{description}</p>
    </div>
  );
}
