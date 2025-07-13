"use server";

import { db } from "@/config/db";

export const contactAction = async (formData) => {
  const { name, email, message } = Object.fromEntries(formData.entries());

  await db.execute(
    `INSERT INTO contact_form(full_name, email, message) values (?, ?, ?)`,
    [name, email, message]
  );
};
