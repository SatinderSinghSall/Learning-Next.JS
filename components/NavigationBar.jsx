"use client";

import React, { useState } from "react";
import Link from "next/link";
import { usePathname } from "next/navigation";
import { Menu, X, ChevronDown, ChevronUp } from "lucide-react";

export default function NavigationBar() {
  const [isOpen, setIsOpen] = useState(false);
  const [showMore, setShowMore] = useState(false);
  const pathname = usePathname();

  const navLinks = [
    { name: "Home", path: "/" },
    { name: "About", path: "/about" },
    { name: "Services", path: "/service" },
    { name: "Contact", path: "/contact" },
    { name: "About NextJS", path: "/about-next-js" },
  ];

  const moreLinks = [
    { name: "Admin", path: "/admin" },
    { name: "Client Component", path: "/client-component" },
    { name: "Server Component", path: "/server-component" },
  ];

  const toggleMenu = () => setIsOpen((prev) => !prev);
  const closeMenu = () => setIsOpen(false);

  const linkClasses = (path) =>
    `text-lg font-medium transition ${
      pathname === path
        ? "text-blue-600 underline underline-offset-4"
        : "text-gray-700 hover:text-blue-600 hover:underline underline-offset-4"
    }`;

  return (
    <header className="bg-white fixed w-full z-50 shadow-md">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-4 flex justify-between items-center">
        {/* Logo */}
        <div className="text-3xl font-black tracking-tight text-gray-900">
          <Link href="/">Satinder</Link>
        </div>

        {/* Desktop Navigation */}
        <nav className="hidden md:flex space-x-8 items-center">
          {navLinks.map((link) => (
            <Link
              key={link.name}
              href={link.path}
              className={linkClasses(link.path)}
            >
              {link.name}
            </Link>
          ))}

          {/* View More Dropdown */}
          <div
            className="relative"
            onMouseEnter={() => setShowMore(true)}
            onMouseLeave={() => setShowMore(false)}
          >
            <button className="text-lg font-medium text-gray-700 hover:text-blue-600 flex items-center gap-1">
              View More{" "}
              {showMore ? <ChevronUp size={16} /> : <ChevronDown size={16} />}
            </button>

            {showMore && (
              <div className="absolute top-8 left-0 bg-white border rounded shadow-lg py-2 z-50 min-w-[150px]">
                {moreLinks.map((link) => (
                  <Link
                    key={link.name}
                    href={link.path}
                    className="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100"
                  >
                    {link.name}
                  </Link>
                ))}
              </div>
            )}
          </div>
        </nav>

        {/* Mobile Toggle */}
        <div className="md:hidden">
          <button
            onClick={toggleMenu}
            aria-label="Toggle navigation menu"
            aria-expanded={isOpen}
            aria-controls="mobile-menu"
          >
            {isOpen ? (
              <X className="h-6 w-6 text-gray-800" />
            ) : (
              <Menu className="h-6 w-6 text-gray-800" />
            )}
          </button>
        </div>
      </div>

      {/* Mobile Navigation */}
      {isOpen && (
        <div
          id="mobile-menu"
          className="md:hidden bg-white shadow-md border-t border-gray-100"
        >
          <ul className="flex flex-col px-6 py-4 space-y-4">
            {navLinks.map((link) => (
              <li key={link.name}>
                <Link
                  href={link.path}
                  className={linkClasses(link.path)}
                  onClick={closeMenu}
                >
                  {link.name}
                </Link>
              </li>
            ))}
            <li className="pt-2 border-t border-gray-200 font-semibold text-gray-700">
              More
            </li>
            {moreLinks.map((link) => (
              <li key={link.name}>
                <Link
                  href={link.path}
                  className={linkClasses(link.path)}
                  onClick={closeMenu}
                >
                  {link.name}
                </Link>
              </li>
            ))}
          </ul>
        </div>
      )}
    </header>
  );
}
