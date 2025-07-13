import { db } from "../../../../config/db";
import {
  User,
  Mail,
  Phone,
  MapPin,
  Calendar,
  ShieldCheck,
  BadgeCheck,
} from "lucide-react";

export const revalidate = 30;

const StaticPage = async () => {
  const [doctors] = await db.execute("SELECT * FROM doctors");

  return (
    <div className="p-8 max-w-7xl mx-auto">
      <h1 className="mt-15 text-4xl font-bold text-gray-900 mb-10 text-center">
        Meet Our Doctors
      </h1>
      <ul className="grid gap-8 sm:grid-cols-1 md:grid-cols-2 lg:grid-cols-3">
        {doctors.map((doctor) => (
          <li
            key={doctor.doctor_id}
            className="bg-white rounded-3xl shadow-md hover:shadow-xl transition-shadow p-6 border border-gray-100"
          >
            {/* Header: Name and Specialization */}
            <div className="flex items-center gap-4 mb-4">
              <div className="w-14 h-14 bg-gray-200 rounded-full flex items-center justify-center text-gray-500 text-xl font-semibold">
                {doctor.first_name[0]}
                {doctor.last_name[0]}
              </div>
              <div>
                <h2 className="text-xl font-bold text-gray-800">
                  Dr. {doctor.first_name} {doctor.last_name}
                </h2>
                <p className="text-sm text-blue-600 font-medium">
                  {doctor.specialization || "General Practitioner"}
                </p>
              </div>
            </div>

            {/* Info list */}
            <div className="text-sm text-gray-700 space-y-2">
              <p className="flex items-center gap-2">
                <User size={16} />
                <span className="font-medium">Gender:</span> {doctor.gender}
              </p>
              <p className="flex items-center gap-2">
                <Mail size={16} />
                <span className="font-medium">Email:</span> {doctor.email}
              </p>
              <p className="flex items-center gap-2">
                <Phone size={16} />
                <span className="font-medium">Phone:</span> {doctor.phone}
              </p>
              <p className="flex items-center gap-2">
                <MapPin size={16} />
                <span className="font-medium">Location:</span> {doctor.city},{" "}
                {doctor.state}, {doctor.postal_code}
              </p>
              <p className="flex items-center gap-2">
                <Calendar size={16} />
                <span className="font-medium">DOB:</span>{" "}
                {new Date(doctor.date_of_birth).toLocaleDateString()}
              </p>
              <p className="flex items-center gap-2">
                <ShieldCheck size={16} />
                <span className="font-medium">Experience:</span>{" "}
                {doctor.experience_years} years
              </p>
              <p className="flex items-center gap-2">
                <BadgeCheck size={16} />
                <span className="font-medium">License No.:</span>{" "}
                {doctor.license_number}
              </p>
              <p className="flex items-center gap-2">
                <Calendar size={16} />
                <span className="font-medium">Joined:</span>{" "}
                {new Date(doctor.joining_date).toLocaleDateString()}
              </p>
              <p className="font-medium text-gray-800">
                Address:
                <span className="font-normal text-gray-600">
                  {" "}
                  {doctor.address}
                </span>
              </p>
              <div className="mt-3 flex items-center gap-2">
                <span
                  className={`inline-block px-2 py-1 text-xs rounded-full font-semibold ${
                    doctor.is_active
                      ? "bg-green-100 text-green-800"
                      : "bg-red-100 text-red-800"
                  }`}
                >
                  {doctor.is_active ? "Active" : "Inactive"}
                </span>
              </div>
            </div>
          </li>
        ))}
      </ul>
    </div>
  );
};

export default StaticPage;
