"use client";

import { motion } from "framer-motion";
import { FaTools, FaBullseye } from "react-icons/fa";

const About = () => {
  return (
    <main className="pt-28 px-4 md:px-10 min-h-screen bg-gradient-to-b from-white via-gray-50 to-gray-100 text-gray-800">
      <motion.section
        initial={{ opacity: 0, y: 40 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 0.7 }}
        className="max-w-5xl mx-auto bg-white shadow-2xl rounded-3xl p-10"
      >
        <div className="flex flex-col md:flex-row items-center gap-8 mb-10">
          <img
            src="https://via.placeholder.com/120"
            alt="Profile"
            className="w-36 h-36 rounded-full border-[6px] border-indigo-500 shadow-lg"
          />
          <div>
            <h1 className="text-5xl font-extrabold text-gray-900 mb-3">
              Admin About Page
            </h1>
            <p className="text-gray-600 text-lg leading-relaxed max-w-2xl">
              Hello! I'm the admin of this dashboard,{" "}
              <span className="font-semibold text-indigo-600">
                Satinder Singh Sall
              </span>
              . I specialize in creating smooth user experiences, managing
              content, and building efficient workflows.
            </p>
          </div>
        </div>

        <div className="grid md:grid-cols-2 gap-8">
          <div className="bg-indigo-50 p-6 rounded-2xl border border-indigo-200 hover:shadow-md transition-shadow">
            <div className="flex items-center gap-3 mb-3 text-indigo-700">
              <FaTools className="text-2xl" />
              <h2 className="text-xl font-semibold">Skills & Tools</h2>
            </div>
            <ul className="list-disc list-inside text-gray-700 space-y-1 pl-2">
              <li>React & Tailwind CSS</li>
              <li>Node.js & Express</li>
              <li>RESTful APIs</li>
              <li>Admin Dashboard Development</li>
            </ul>
          </div>

          <div className="bg-yellow-50 p-6 rounded-2xl border border-yellow-200 hover:shadow-md transition-shadow">
            <div className="flex items-center gap-3 mb-3 text-yellow-700">
              <FaBullseye className="text-2xl" />
              <h2 className="text-xl font-semibold">Goals</h2>
            </div>
            <p className="text-gray-700 leading-relaxed">
              To ensure the admin experience is intuitive, responsive, and
              scalable. I aim to streamline content management and enhance
              productivity through thoughtful design and development.
            </p>
          </div>
        </div>
      </motion.section>
    </main>
  );
};

export default About;
