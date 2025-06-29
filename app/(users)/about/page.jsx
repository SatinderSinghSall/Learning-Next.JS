"use client";

import { useRouter } from "next/navigation";
import { motion } from "framer-motion";
import {
  ArrowRightIcon,
  CodeBracketIcon,
  RocketLaunchIcon,
  SparklesIcon,
} from "@heroicons/react/24/outline";
import Image from "next/image";

const About = () => {
  const router = useRouter();
  const navigateToTeams = () => router.push("/about/teams");

  return (
    <main className="min-h-screen bg-gradient-to-br from-white via-blue-50 to-blue-100 pt-32 px-4 text-gray-800 font-sans">
      <section className="max-w-6xl mx-auto text-center">
        <motion.h1
          className="text-5xl sm:text-6xl font-extrabold mb-12 tracking-tight leading-tight"
          initial={{ opacity: 0, y: -30 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.6 }}
        >
          About <span className="text-blue-600">Satinder</span>
        </motion.h1>

        {/* IMAGE + TEXT */}
        <section className="grid grid-cols-1 md:grid-cols-2 gap-12 items-center max-w-6xl mx-auto mb-12 px-4 md:px-0">
          <motion.div
            initial={{ opacity: 0, x: -30 }}
            animate={{ opacity: 1, x: 0 }}
            transition={{ delay: 0.2, duration: 0.6 }}
            className="flex justify-center"
          >
            <div className="w-64 h-64 sm:w-80 sm:h-80 rounded-full overflow-hidden border-[6px] border-blue-600 shadow-2xl">
              <Image
                src="/Satinder_Image.jpg"
                width={320}
                height={320}
                alt="Image of Satinder Singh Sall"
                className="object-cover w-full h-full"
              />
            </div>
          </motion.div>

          <motion.div
            initial={{ opacity: 0, x: 30 }}
            animate={{ opacity: 1, x: 0 }}
            transition={{ delay: 0.3, duration: 0.6 }}
            className="text-left"
          >
            <p className="text-lg sm:text-xl text-gray-700 leading-relaxed">
              We design and engineer modern digital experiences using
              cutting-edge frameworks like <strong>Next.js</strong>,{" "}
              <strong>Tailwind CSS</strong>, and beyond — with performance and
              beauty in mind.
            </p>

            <motion.button
              onClick={navigateToTeams}
              className="mt-8 inline-flex items-center gap-2 px-6 py-3 bg-blue-700 text-white text-base font-medium rounded-full shadow-lg hover:bg-blue-800 transition-all duration-300"
              whileHover={{ scale: 1.05 }}
              whileTap={{ scale: 0.97 }}
            >
              Meet Our Teams
              <ArrowRightIcon className="w-5 h-5" />
            </motion.button>
          </motion.div>
        </section>
      </section>
      {/* STATS SECTION */}
      <section className="mt-24 grid grid-cols-1 sm:grid-cols-3 gap-10 max-w-6xl mx-auto text-center px-4">
        {[
          { title: "12+", desc: "Experts On Board" },
          { title: "100%", desc: "Client Satisfaction" },
          { title: "∞", desc: "Possibilities" },
        ].map((stat, i) => (
          <motion.div
            key={i}
            className="bg-white p-8 rounded-3xl shadow-lg hover:shadow-2xl transition transform hover:scale-[1.03]"
            initial={{ opacity: 0, y: 20 }}
            whileInView={{ opacity: 1, y: 0 }}
            transition={{ delay: i * 0.2, duration: 0.5 }}
            viewport={{ once: true }}
          >
            <h3 className="text-4xl font-extrabold text-blue-600">
              {stat.title}
            </h3>
            <p className="text-gray-500 mt-2 text-lg">{stat.desc}</p>
          </motion.div>
        ))}
      </section>
      {/* MISSION SECTION */}
      <section className="mt-28 max-w-4xl mx-auto text-center px-6">
        <motion.h2
          className="text-3xl sm:text-4xl font-bold mb-6 text-gray-800"
          initial={{ opacity: 0 }}
          whileInView={{ opacity: 1 }}
          transition={{ duration: 0.5 }}
        >
          Our Mission
        </motion.h2>
        <p className="text-gray-600 text-lg leading-relaxed">
          To empower businesses with world-class web experiences that are fast,
          accessible, and beautiful — one line of code at a time.
        </p>
      </section>
      {/* WHAT WE DO */}
      <section className="mt-28 max-w-6xl mx-auto grid grid-cols-1 sm:grid-cols-3 gap-10 text-center px-6">
        {[
          {
            icon: <SparklesIcon className="w-10 h-10 mx-auto text-blue-600" />,
            title: "UI/UX Excellence",
            desc: "Designs that look good and feel even better.",
          },
          {
            icon: (
              <CodeBracketIcon className="w-10 h-10 mx-auto text-blue-600" />
            ),
            title: "Scalable Code",
            desc: "Modular, reusable, and optimized codebases.",
          },
          {
            icon: (
              <RocketLaunchIcon className="w-10 h-10 mx-auto text-blue-600" />
            ),
            title: "High Performance",
            desc: "Speed-focused architecture from day one.",
          },
        ].map((item, i) => (
          <motion.div
            key={i}
            initial={{ opacity: 0, y: 20 }}
            whileInView={{ opacity: 1, y: 0 }}
            transition={{ delay: i * 0.2, duration: 0.6 }}
            className="bg-white p-6 rounded-2xl shadow-md hover:shadow-xl transition"
          >
            {item.icon}
            <h3 className="text-xl font-semibold mt-4">{item.title}</h3>
            <p className="text-gray-600 mt-2">{item.desc}</p>
          </motion.div>
        ))}
      </section>
      {/* CTA */}
      <section className="mt-28 bg-blue-700 text-white py-16 text-center px-6 rounded-3xl mx-4 sm:mx-auto max-w-5xl shadow-lg">
        <motion.h3
          className="text-3xl sm:text-4xl font-bold mb-4"
          initial={{ opacity: 0 }}
          whileInView={{ opacity: 1 }}
          transition={{ duration: 0.5 }}
        >
          Ready to build the future?
        </motion.h3>
        <p className="text-lg mb-6">
          Let’s create something amazing together — get in touch with our team.
        </p>
        <button
          onClick={navigateToTeams}
          className="inline-flex items-center gap-2 px-8 py-4 bg-white text-blue-700 text-base font-semibold rounded-full shadow-md hover:bg-gray-100 transition"
        >
          Let's Talk <ArrowRightIcon className="w-5 h-5" />
        </button>
      </section>
      <div className="h-16"></div> {/* Bottom space */}
    </main>
  );
};

export default About;
