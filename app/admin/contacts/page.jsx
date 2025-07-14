"use client";

import { useEffect, useState } from "react";
import { Mail, User, MessageSquareText, XCircle } from "lucide-react";

export default function ContactsPage() {
  const [contacts, setContacts] = useState([]);
  const [loading, setLoading] = useState(true);
  const [selectedContact, setSelectedContact] = useState(null);

  useEffect(() => {
    fetch("/api/contacts")
      .then((res) => res.json())
      .then((data) => {
        setContacts(data);
        setLoading(false);
      });
  }, []);

  const openModal = (contact) => setSelectedContact(contact);
  const closeModal = () => setSelectedContact(null);

  if (loading)
    return (
      <div className="max-w-6xl mx-auto px-6 py-10 animate-pulse">
        <h1 className="text-4xl font-bold mt-11 mb-5 text-center">
          Contact Submissions
        </h1>
        <div className="mb-8 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
          <div className="p-6 bg-gradient-to-r from-purple-500 to-indigo-500 text-white rounded-2xl shadow-lg flex items-center gap-4 opacity-70">
            <div className="bg-white/30 p-4 rounded-full w-16 h-16" />
            <div>
              <div className="h-8 bg-white/30 rounded mb-2 w-24"></div>
              <div className="h-4 bg-white/20 rounded w-20"></div>
            </div>
          </div>
        </div>

        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
          {[...Array(6)].map((_, index) => (
            <div
              key={index}
              className="p-5 rounded-2xl shadow-lg border bg-white space-y-4"
            >
              <div className="h-5 bg-gray-200 rounded w-1/2" />
              <div className="h-4 bg-gray-200 rounded w-3/4" />
              <div className="h-24 bg-gray-100 rounded" />
            </div>
          ))}
        </div>
      </div>
    );

  return (
    <div className="max-w-6xl mx-auto px-6 py-10">
      <h1 className="text-4xl font-bold mt-11 mb-5 text-center">
        Contact Submissions
      </h1>

      <div className="mb-8 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
        <div className="p-6 bg-gradient-to-r from-purple-500 to-indigo-500 text-white rounded-2xl shadow-lg flex items-center gap-4">
          <div className="bg-white/20 p-4 rounded-full">
            <MessageSquareText className="w-8 h-8" />
          </div>
          <div>
            <div className="text-3xl font-bold">{contacts.length}</div>
            <div className="text-sm">Total Messages</div>
          </div>
        </div>
      </div>

      {contacts.length === 0 ? (
        <p className="text-center text-gray-500">No contacts found.</p>
      ) : (
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
          {contacts.map((contact) => (
            <div
              key={contact.id}
              onClick={() => openModal(contact)}
              className="p-5 rounded-2xl shadow-lg border hover:shadow-xl transition cursor-pointer bg-white"
            >
              <div className="flex items-center gap-3 mb-2 text-gray-800">
                <User className="w-5 h-5 text-blue-600" />
                <span className="font-semibold">{contact.full_name}</span>
              </div>
              <div className="flex items-center gap-3 text-gray-600">
                <Mail className="w-5 h-5 text-green-600" />
                <span className="text-sm">{contact.email}</span>
              </div>
              <p className="mt-4 text-sm line-clamp-3 text-gray-700">
                {contact.message}
              </p>
            </div>
          ))}
        </div>
      )}

      {/* Modal */}
      {selectedContact && (
        <div className="fixed inset-0 bg-black/40 flex items-center justify-center z-50">
          <div className="bg-white p-8 rounded-xl max-w-md w-full shadow-2xl relative">
            <button
              onClick={closeModal}
              className="absolute top-3 right-3 text-gray-400 hover:text-red-500"
            >
              <XCircle className="w-6 h-6" />
            </button>
            <h2 className="text-2xl font-bold mb-4 flex items-center gap-2">
              <User className="w-5 h-5 text-blue-600" />
              {selectedContact.full_name}
            </h2>
            <p className="flex items-center gap-2 mb-2 text-gray-600">
              <Mail className="w-5 h-5 text-green-600" />
              {selectedContact.email}
            </p>
            <div className="mt-4">
              <h3 className="text-lg font-semibold mb-1 flex items-center gap-2 text-gray-700">
                <MessageSquareText className="w-5 h-5 text-purple-600" />
                Message:
              </h3>
              <p className="text-gray-800 whitespace-pre-wrap">
                {selectedContact.message}
              </p>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
