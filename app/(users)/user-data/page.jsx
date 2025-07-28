"use client";

import { Mail, Github, Linkedin, Twitter } from "lucide-react";
import { useState, useTransition } from "react";
import { contactAction } from "./contact.action";

const Contact = () => {
  const [isPending, startTransition] = useTransition();
  const [contactFormResponse, setContactFormResponse] = useState(null);

  const HandleFormSubmit = (formData) => {
    const { name, email, message } = Object.fromEntries(formData);

    startTransition(async () => {
      const res = await contactAction(name, email, message);
      setContactFormResponse(res);
    });
  };

  return (
    <main className="pt-24 px-4 min-h-screen bg-gray-50 flex flex-col items-center justify-center">
      {/* Contact Form */}
      <div className="max-w-3xl w-full bg-white shadow-lg rounded-2xl p-8 mb-10">
        <h1 className="text-4xl font-bold text-gray-800 mb-6">Get in Touch</h1>
        <p className="text-gray-600 text-lg mb-8">
          Have questions, ideas, or want to collaborate? Send me a message and
          I'll get back to you!
        </p>
        <section>
          {contactFormResponse && (
            <div
              className={`mb-8 rounded-xl px-6 py-4 text-sm font-medium shadow-md ${
                contactFormResponse.success
                  ? "bg-green-100 text-green-700 border border-green-300"
                  : "bg-red-100 text-red-700 border border-red-300"
              }`}
            >
              {contactFormResponse.message}
            </div>
          )}
        </section>
        <form className="space-y-6" action={HandleFormSubmit}>
          <div>
            <label
              htmlFor="name"
              className="block text-sm font-medium text-gray-700"
            >
              Name
            </label>
            <input
              type="text"
              id="name"
              name="name"
              required
              className="mt-1 block w-full rounded-xl border-gray-300 shadow-sm focus:ring-indigo-500 focus:border-indigo-500 p-3"
              placeholder="Your full name"
            />
          </div>
          <div>
            <label
              htmlFor="email"
              className="block text-sm font-medium text-gray-700"
            >
              Email
            </label>
            <input
              type="email"
              id="email"
              name="email"
              required
              className="mt-1 block w-full rounded-xl border-gray-300 shadow-sm focus:ring-indigo-500 focus:border-indigo-500 p-3"
              placeholder="you@example.com"
            />
          </div>
          <div>
            <label
              htmlFor="message"
              className="block text-sm font-medium text-gray-700"
            >
              Message
            </label>
            <textarea
              id="message"
              name="message"
              rows="4"
              required
              className="mt-1 block w-full rounded-xl border-gray-300 shadow-sm focus:ring-indigo-500 focus:border-indigo-500 p-3"
              placeholder="Write your message here..."
            />
          </div>
          <div>
            <Submit isPending={isPending} />
          </div>
        </form>
        <p className="text-sm text-gray-500 mt-6 text-center">
          I'll respond as soon as possible!
        </p>
      </div>

      {/* Social Links */}
      <section className="w-full mb-16 max-w-4xl">
        <h2 className="text-2xl font-bold text-gray-800 mb-6 text-center">
          Connect with Me
        </h2>
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
          {[
            {
              icon: <Mail className="h-5 w-5 text-white" />,
              title: "Email",
              desc: "satindersinghsll111@gmail.com",
              href: "mailto:satindersinghsll111@gmail.com",
              bg: "bg-indigo-500",
            },
            {
              icon: <Github className="h-5 w-5 text-white" />,
              title: "GitHub",
              desc: "@SatinderSinghSall",
              href: "https://github.com/SatinderSinghSall",
              bg: "bg-gray-800",
            },
            {
              icon: <Linkedin className="h-5 w-5 text-white" />,
              title: "LinkedIn",
              desc: "Satinder Singh Sall",
              href: "https://www.linkedin.com/in/satinder-singh-sall-b62049204/",
              bg: "bg-blue-700",
            },
            {
              icon: <Twitter className="h-5 w-5 text-white" />,
              title: "Twitter",
              desc: "@Satinder Singh Sall",
              href: "https://x.com/SallSatinder",
              bg: "bg-sky-500",
            },
          ].map((link, idx) => (
            <a
              key={idx}
              href={link.href}
              target="_blank"
              rel="noopener noreferrer"
              className="group bg-white border rounded-2xl p-5 transition hover:shadow-lg flex flex-col items-start gap-4 hover:translate-y-[-2px]"
            >
              <div className={`p-3 rounded-full ${link.bg} shadow-md`}>
                {link.icon}
              </div>
              <div>
                <h3 className="text-lg font-semibold text-gray-800 group-hover:text-indigo-600 transition">
                  {link.title}
                </h3>
                <p className="text-sm text-gray-600 break-all">{link.desc}</p>
              </div>
            </a>
          ))}
        </div>
      </section>
    </main>
  );
};

export default Contact;

const Submit = ({ isPending }) => {
  return (
    <>
      <button
        type="submit"
        disabled={isPending}
        className={`w-full inline-flex items-center justify-center py-3 px-6 border border-transparent shadow-md text-white rounded-xl text-base font-semibold transition duration-200
    ${
      isPending
        ? "bg-indigo-400 cursor-not-allowed"
        : "bg-indigo-600 hover:bg-indigo-700 cursor-pointer"
    }`}
      >
        {isPending ? (
          <>
            <svg
              className="animate-spin h-5 w-5 mr-2 text-white"
              xmlns="http://www.w3.org/2000/svg"
              fill="none"
              viewBox="0 0 24 24"
            >
              <circle
                className="opacity-25"
                cx="12"
                cy="12"
                r="10"
                stroke="currentColor"
                strokeWidth="4"
              ></circle>
              <path
                className="opacity-75"
                fill="currentColor"
                d="M4 12a8 8 0 018-8v4a4 4 0 00-4 4H4z"
              ></path>
            </svg>
            Sending...
          </>
        ) : (
          <span>Send Message</span>
        )}
      </button>
    </>
  );
};
