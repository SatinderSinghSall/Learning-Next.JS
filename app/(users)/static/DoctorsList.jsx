"use client";

import { useState } from "react";

export default function DoctorsList({ doctors }) {
  const [filter, setFilter] = useState("all");

  const filteredDoctors = doctors.filter((doctor) => {
    if (filter === "all") return true;
    if (filter === "active") return doctor.is_active;
    if (filter === "inactive") return !doctor.is_active;
    return true;
  });

  return (
    <>
      <div className="flex justify-center mb-10 space-x-4">
        <button
          onClick={() => setFilter("all")}
          className={`px-5 py-2 rounded-full border ${
            filter === "all"
              ? "bg-blue-600 text-white"
              : "bg-white text-gray-800 hover:bg-blue-50"
          } transition`}
        >
          All
        </button>
        <button
          onClick={() => setFilter("active")}
          className={`px-5 py-2 rounded-full border ${
            filter === "active"
              ? "bg-green-600 text-white"
              : "bg-white text-gray-800 hover:bg-green-50"
          } transition`}
        >
          Active
        </button>
        <button
          onClick={() => setFilter("inactive")}
          className={`px-5 py-2 rounded-full border ${
            filter === "inactive"
              ? "bg-red-600 text-white"
              : "bg-white text-gray-800 hover:bg-red-50"
          } transition`}
        >
          Inactive
        </button>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
        {filteredDoctors.length > 0 ? (
          filteredDoctors.map((doctor) => (
            <div
              key={doctor.doctor_id}
              className="bg-white border rounded-2xl p-6 shadow hover:shadow-xl transition duration-300"
            >
              <h2 className="text-xl font-semibold text-gray-900 mb-1">
                Dr. {doctor.first_name} {doctor.last_name}
              </h2>
              <p className="text-sm text-gray-500 mb-3">
                {doctor.specialization} • {doctor.gender}
              </p>
              <div className="space-y-1 text-sm text-gray-700 mb-3">
                <p>
                  <strong>Email:</strong> {doctor.email}
                </p>
                <p>
                  <strong>Phone:</strong> {doctor.phone}
                </p>
                <p>
                  <strong>Address:</strong> {doctor.address}, {doctor.city},{" "}
                  {doctor.state}, {doctor.postal_code}
                </p>
                <p>
                  <strong>DOB:</strong>{" "}
                  {new Date(doctor.date_of_birth).toLocaleDateString()}
                </p>
                <p>
                  <strong>Experience:</strong> {doctor.experience_years} years
                </p>
                <p>
                  <strong>License:</strong> {doctor.license_number}
                </p>
                <p>
                  <strong>Joined:</strong>{" "}
                  {new Date(doctor.joining_date).toLocaleDateString()}
                </p>
              </div>
              <span
                className={`inline-block px-3 py-1 text-xs font-semibold rounded-full ${
                  doctor.is_active
                    ? "bg-green-100 text-green-800"
                    : "bg-red-100 text-red-800"
                }`}
              >
                {doctor.is_active ? "Active" : "Inactive"}
              </span>
            </div>
          ))
        ) : (
          <p className="col-span-full text-center text-gray-500">
            No doctors found for selected filter.
          </p>
        )}
      </div>
    </>
  );
}
