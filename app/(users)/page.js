"use client";

import {
  BoltIcon,
  DevicePhoneMobileIcon,
  CodeBracketIcon,
} from "@heroicons/react/24/outline";
import { useState } from "react";
import { FiMail } from "react-icons/fi";
import { FaGithub, FaFigma } from "react-icons/fa";
import { SiVercel, SiNetlify } from "react-icons/si";

const features = [
  {
    title: "Fast Performance",
    desc: "Built with Next.js and optimized with Tailwind for blazing speed.",
    icon: <BoltIcon className="h-10 w-10 text-blue-600 mx-auto mb-4" />,
  },
  {
    title: "Responsive Design",
    desc: "Fully mobile-friendly and beautifully adaptive.",
    icon: (
      <DevicePhoneMobileIcon className="h-10 w-10 text-green-600 mx-auto mb-4" />
    ),
  },
  {
    title: "Developer Friendly",
    desc: "Clear structure and tools to help you move quickly.",
    icon: (
      <CodeBracketIcon className="h-10 w-10 text-purple-600 mx-auto mb-4" />
    ),
  },
];

const faqs = [
  {
    q: "Is Satinder open source?",
    a: "Yes! Satinder is MIT-licensed and fully open source on GitHub.",
  },
  {
    q: "Can I use it in commercial projects?",
    a: "Absolutely. Use it in personal or commercial apps freely.",
  },
  {
    q: "Does it support dark mode?",
    a: "Yes, dark mode support was added in version 2.3.",
  },
];

const Home = () => {
  const [openFAQ, setOpenFAQ] = useState(null);

  return (
    <div className="flex flex-col min-h-screen bg-gradient-to-br from-blue-50 to-white text-gray-800">
      <main className="pt-24 px-6 flex-grow">
        {/* Hero Section */}
        <section className="max-w-5xl mx-auto text-center mb-20">
          <h1 className="text-5xl font-extrabold mb-4">
            Welcome to <span className="text-blue-600">Satinder</span>
          </h1>
          <p className="text-xl text-gray-600 mb-6">
            Build modern apps faster with Next.js and Tailwind CSS.
          </p>
          <button className="px-8 py-3 bg-blue-700 text-white rounded-lg shadow-lg hover:bg-blue-800 transition">
            Get Started
          </button>
        </section>

        {/* Features */}
        <section className="grid md:grid-cols-3 gap-8 max-w-6xl mx-auto mb-20">
          {features.map((feature, idx) => (
            <div
              key={idx}
              className="bg-white p-8 rounded-xl shadow-md hover:shadow-xl transition text-center"
            >
              {feature.icon}
              <h3 className="text-xl font-semibold mb-2">{feature.title}</h3>
              <p className="text-gray-600">{feature.desc}</p>
            </div>
          ))}
        </section>

        {/* Testimonial */}
        <section className="bg-white py-16">
          <div className="max-w-4xl mx-auto text-center">
            <h2 className="text-3xl font-bold mb-6">What Developers Say</h2>
            <div className="bg-gray-100 p-6 rounded-xl shadow">
              <p className="text-lg italic text-gray-700">
                &quot;Satinder helped me speed up my development process by 3x.
                It’s intuitive, clean, and just works.&quot;
              </p>
              <div className="mt-4 text-sm text-gray-500">
                – A Happy Developer
              </div>
            </div>
          </div>
        </section>

        {/* Stats */}
        <section className="py-20 bg-gray-50">
          <div className="max-w-6xl mx-auto grid grid-cols-1 md:grid-cols-3 gap-8 text-center">
            <div>
              <h3 className="text-4xl font-bold text-blue-600">50K+</h3>
              <p className="text-gray-600 mt-2">Developers Worldwide</p>
            </div>
            <div>
              <h3 className="text-4xl font-bold text-blue-600">120+</h3>
              <p className="text-gray-600 mt-2">Projects Launched</p>
            </div>
            <div>
              <h3 className="text-4xl font-bold text-blue-600">4.9/5</h3>
              <p className="text-gray-600 mt-2">User Satisfaction</p>
            </div>
          </div>
        </section>

        {/* Logos / Trusted By */}
        <section className="py-20 bg-gray-50">
          <h2 className="text-3xl font-bold text-center mb-10">Trusted By</h2>
          <div className="max-w-5xl mx-auto grid grid-cols-2 sm:grid-cols-4 gap-8">
            <div className="flex flex-col items-center justify-center bg-white rounded-2xl shadow hover:shadow-lg p-6 transition transform hover:-translate-y-1">
              <SiVercel className="text-4xl text-gray-700" />
              <span className="mt-2 text-sm text-gray-500">Vercel</span>
            </div>
            <div className="flex flex-col items-center justify-center bg-white rounded-2xl shadow hover:shadow-lg p-6 transition transform hover:-translate-y-1">
              <FaGithub className="text-4xl text-gray-700" />
              <span className="mt-2 text-sm text-gray-500">GitHub</span>
            </div>
            <div className="flex flex-col items-center justify-center bg-white rounded-2xl shadow hover:shadow-lg p-6 transition transform hover:-translate-y-1">
              <SiNetlify className="text-4xl text-gray-700" />
              <span className="mt-2 text-sm text-gray-500">Netlify</span>
            </div>
            <div className="flex flex-col items-center justify-center bg-white rounded-2xl shadow hover:shadow-lg p-6 transition transform hover:-translate-y-1">
              <FaFigma className="text-4xl text-gray-700" />
              <span className="mt-2 text-sm text-gray-500">Figma</span>
            </div>
          </div>
        </section>

        {/* Changelog */}
        <section className="max-w-5xl mx-auto py-16">
          <h2 className="text-2xl font-bold mb-4 text-center">
            Changelog Highlights
          </h2>
          <ul className="space-y-4">
            <li className="border-l-4 border-blue-600 pl-4">
              <strong>v2.3</strong> – Added dark mode and plugin system (June
              2025)
            </li>
            <li className="border-l-4 border-blue-600 pl-4">
              <strong>v2.2</strong> – Improved performance by 20%
            </li>
          </ul>
        </section>

        {/* FAQ */}
        <section className="max-w-4xl mx-auto py-16">
          <h2 className="text-3xl font-bold text-center mb-6">FAQs</h2>
          <div className="space-y-4">
            {faqs.map((faq, idx) => (
              <div
                key={idx}
                className="border rounded-md p-4 cursor-pointer"
                onClick={() => setOpenFAQ(openFAQ === idx ? null : idx)}
              >
                <div className="font-medium flex justify-between items-center">
                  {faq.q}
                  <span>{openFAQ === idx ? "-" : "+"}</span>
                </div>
                {openFAQ === idx && (
                  <p className="mt-2 text-gray-600">{faq.a}</p>
                )}
              </div>
            ))}
          </div>
        </section>

        {/* Newsletter */}
        <section className="py-24 bg-gradient-to-br from-blue-700 via-indigo-700 to-purple-700 text-white">
          <div className="max-w-2xl mx-auto px-6">
            <div className="bg-white/10 backdrop-blur-lg rounded-3xl p-10 text-center shadow-xl border border-white/20">
              <div className="flex justify-center mb-4 text-white">
                <FiMail className="h-10 w-10 text-white/90" />
              </div>
              <h2 className="text-3xl sm:text-4xl font-bold mb-2 text-white">
                Stay Updated
              </h2>
              <p className="text-indigo-100 mb-6">
                Subscribe for exclusive content, tutorials, and product news —
                no spam, ever.
              </p>

              <form className="flex flex-col sm:flex-row items-center gap-4 justify-center mt-4">
                <input
                  type="email"
                  required
                  placeholder="you@example.com"
                  className="flex-1 px-5 py-3 w-full rounded-full text-gray-900 shadow focus:outline-none focus:ring-2 focus:ring-white/50"
                />
                <button
                  type="submit"
                  className="px-6 py-3 rounded-full bg-white text-indigo-700 font-semibold hover:bg-gray-100 transition shadow-md"
                >
                  Subscribe
                </button>
              </form>
            </div>
          </div>
        </section>
      </main>

      {/* Footer */}
      <footer className="bg-blue-900 text-white py-6 mt-10">
        <div className="max-w-6xl mx-auto px-4 flex flex-col md:flex-row justify-between items-center">
          <p className="text-sm">
            &copy; {new Date().getFullYear()} Satinder. All rights reserved.
          </p>
          <div className="flex gap-4 mt-4 md:mt-0">
            <a href="#" className="hover:underline">
              Privacy
            </a>
            <a href="#" className="hover:underline">
              Terms
            </a>
            <a href="#" className="hover:underline">
              Support
            </a>
          </div>
        </div>
      </footer>
    </div>
  );
};

export default Home;
