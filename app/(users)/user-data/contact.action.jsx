"use server";

import { db } from "@/config/db";

export const contactAction = async (name, email, message) => {
  try {
    const { name, email, message } = Object.fromEntries(formData.entries());
    await db.execute(
      `INSERT INTO contact_form(full_name, email, message) values (?, ?, ?)`,
      [name, email, message]
    );
    return { success: true, message: "Form submitted successfully!" };
  } catch (error) {
    console.log(`Error Submitting the Form: ${error}`);
    if (error.message === "NEXT_REDIRECT") throw error;
    return { success: false, message: "Error while submitting!" };
  }
};
