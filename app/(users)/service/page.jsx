"use client";

import { useEffect, useState } from "react";
import { motion, AnimatePresence } from "framer-motion";

const teamMembers = [
  {
    initials: "SSS",
    name: "Satinder Singh Sall",
    role: "Full-Stack Engineer/Developer",
    skills: "Frontend & Backend",
    bgColor: "bg-blue-200",
    textColor: "text-blue-600",
  },
  {
    initials: "TT",
    name: "Thapa Technical",
    role: "Frontend Developer",
    skills: "React & TypeScript",
    bgColor: "bg-indigo-200",
    textColor: "text-indigo-600",
  },
  {
    initials: "NN",
    name: "Nick Nelson",
    role: "Security Engineer",
    skills: "Cybersecurity & Audits",
    bgColor: "bg-gray-200",
    textColor: "text-gray-700",
  },
  {
    initials: "MJ",
    name: "Mike Johnson",
    role: "Backend Developer",
    skills: "Node.js & Python",
    bgColor: "bg-purple-200",
    textColor: "text-purple-600",
  },
  {
    initials: "EW",
    name: "Emily Wilson",
    role: "Product Manager",
    skills: "Strategy & Analytics",
    bgColor: "bg-pink-200",
    textColor: "text-pink-600",
  },
  {
    initials: "DL",
    name: "David Lee",
    role: "DevOps Engineer",
    skills: "AWS & Docker",
    bgColor: "bg-orange-200",
    textColor: "text-orange-600",
  },
  {
    initials: "AB",
    name: "Anna Brown",
    role: "QA Engineer",
    skills: "Testing & Automation",
    bgColor: "bg-teal-200",
    textColor: "text-teal-600",
  },
  {
    initials: "KC",
    name: "Kevin Chan",
    role: "UI/UX Designer",
    skills: "Figma & Adobe XD",
    bgColor: "bg-green-200",
    textColor: "text-green-600",
  },
  {
    initials: "LS",
    name: "Linda Scott",
    role: "Business Analyst",
    skills: "Product Requirements",
    bgColor: "bg-yellow-200",
    textColor: "text-yellow-700",
  },
  {
    initials: "JR",
    name: "Jason Reed",
    role: "Cloud Architect",
    skills: "Azure & Kubernetes",
    bgColor: "bg-sky-200",
    textColor: "text-sky-600",
  },
  {
    initials: "NP",
    name: "Nina Patel",
    role: "Scrum Master",
    skills: "Agile & JIRA",
    bgColor: "bg-rose-200",
    textColor: "text-rose-600",
  },
  {
    initials: "IG",
    name: "Igor Grekov",
    role: "Mobile Developer",
    skills: "Flutter & Swift",
    bgColor: "bg-cyan-200",
    textColor: "text-cyan-600",
  },
  {
    initials: "ZH",
    name: "Zara Holmes",
    role: "Data Scientist",
    skills: "Machine Learning & SQL",
    bgColor: "bg-lime-200",
    textColor: "text-lime-700",
  },
];

export default function ServicesPage() {
  const [selectedMember, setSelectedMember] = useState(null);

  const handleCardClick = (member) => setSelectedMember(member);
  const closeModal = () => setSelectedMember(null);

  useEffect(() => {
    const escHandler = (e) => {
      if (e.key === "Escape") closeModal();
    };
    document.addEventListener("keydown", escHandler);
    return () => document.removeEventListener("keydown", escHandler);
  }, []);

  return (
    <section className="font-roboto bg-gradient-to-br from-gray-50 to-white py-20">
      <div className="max-w-7xl mx-auto px-6">
        <h2 className="text-5xl font-extrabold text-center text-gray-900 mb-6 tracking-tight">
          Meet Our Team & Services
        </h2>
        <p className="text-center text-gray-500 text-lg mb-16 max-w-3xl mx-auto">
          Talented individuals crafting exceptional software solutions.
        </p>

        <div className="grid gap-12 grid-cols-1 sm:grid-cols-2 md:grid-cols-3">
          {teamMembers.map((member, index) => {
            const isLead = member.name === "Satinder Singh Sall";

            return (
              <div
                key={index}
                onClick={() => handleCardClick(member)}
                className={`cursor-pointer relative bg-white/80 backdrop-blur-md border border-gray-100 rounded-3xl shadow-md p-8 flex flex-col items-center text-center transition-transform duration-300 ${
                  isLead
                    ? "ring-2 ring-blue-500 scale-105"
                    : "hover:shadow-xl hover:scale-[1.02]"
                }`}
              >
                {isLead && (
                  <span className="absolute top-3 right-3 bg-blue-600 text-white text-[10px] font-bold px-2 py-0.5 rounded-full uppercase tracking-wide shadow-sm">
                    Team Lead
                  </span>
                )}

                <div
                  className={`w-24 h-24 rounded-full border-4 ${
                    isLead
                      ? "bg-gradient-to-tr from-blue-500 to-blue-300 border-blue-400"
                      : `${member.bgColor} ${member.textColor} border-white`
                  } flex items-center justify-center mb-5 shadow-md`}
                >
                  <span
                    className={`text-2xl font-extrabold ${
                      isLead ? "text-white" : member.textColor
                    }`}
                  >
                    {member.initials}
                  </span>
                </div>

                <h3 className="text-xl font-bold text-gray-800">
                  {member.name}
                </h3>
                <p className="text-sm text-gray-500 mt-1">{member.role}</p>
                <p className="text-xs text-gray-400 mt-1 italic">
                  {member.skills}
                </p>
              </div>
            );
          })}
        </div>
      </div>

      {/* Modal */}
      <AnimatePresence>
        {selectedMember && (
          <motion.div
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            exit={{ opacity: 0 }}
            className="fixed inset-0 z-50 bg-black/40 flex items-center justify-center px-4"
            onClick={closeModal}
          >
            <motion.div
              initial={{ scale: 0.95, opacity: 0 }}
              animate={{ scale: 1, opacity: 1 }}
              exit={{ scale: 0.95, opacity: 0 }}
              onClick={(e) => e.stopPropagation()}
              className="relative bg-white/80 backdrop-blur-xl rounded-3xl shadow-2xl w-full max-w-md p-8 border border-white/30"
            >
              <button
                className="absolute top-4 right-4 text-gray-600 hover:text-gray-900 text-xl font-bold focus:outline-none focus:ring-2 focus:ring-blue-500 rounded-full"
                onClick={closeModal}
                aria-label="Close Modal"
              >
                &times;
              </button>

              <div className="flex flex-col items-center text-center">
                <div
                  className={`w-24 h-24 rounded-full border-4 ${
                    selectedMember.name === "Satinder Singh Sall"
                      ? "bg-gradient-to-tr from-blue-500 to-blue-300 border-blue-400"
                      : `${selectedMember.bgColor} ${selectedMember.textColor} border-white`
                  } flex items-center justify-center mb-5 shadow-md`}
                >
                  <span
                    className={`text-2xl font-extrabold ${
                      selectedMember.name === "Satinder Singh Sall"
                        ? "text-white"
                        : selectedMember.textColor
                    }`}
                  >
                    {selectedMember.initials}
                  </span>
                </div>

                <h3 className="text-2xl font-bold text-gray-900">
                  {selectedMember.name}
                </h3>
                <p className="text-gray-600 text-sm mt-1">
                  {selectedMember.role}
                </p>
                <p className="text-gray-400 text-xs mt-1 italic">
                  {selectedMember.skills}
                </p>
              </div>
            </motion.div>
          </motion.div>
        )}
      </AnimatePresence>
    </section>
  );
}
