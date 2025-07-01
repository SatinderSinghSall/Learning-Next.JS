"use client";

import { useSearchParams } from "next/navigation";
import React from "react";

const ProductList = () => {
  const searchParams = useSearchParams();
  console.log("Inside:", searchParams);

  const page = searchParams.getAll("page");
  const category = searchParams.get("category");
  const sort = searchParams.get("sort");
  const entries = Object.fromEntries(searchParams.entries());

  console.log("\nData Output:");
  console.log("Category: ", category);
  console.log("Sort: ", sort);
  console.log("Page: ", page);
  console.log("Entries: ", entries);

  return (
    <div>
      <p className="border text-xl w-130 p-2 text-gray-800 mt-4">
        Client - Category: {category}, Sort: {sort} & Page: {page}
      </p>
    </div>
  );
};

export default ProductList;

//products?category=laptops&page=2&sort=price-asc
