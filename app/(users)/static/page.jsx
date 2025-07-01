import { db } from "@/config/db";
import DoctorsList from "./DoctorsList";

export default async function StaticPage() {
  const [doctors] = await db.execute(`SELECT * FROM doctors`);
  return (
    <div className="p-8 max-w-7xl mx-auto">
      <h1 className="text-4xl font-bold mt-15 mb-10 text-center text-gray-800">
        Our Doctors
      </h1>
      <DoctorsList doctors={doctors} />
    </div>
  );
}
