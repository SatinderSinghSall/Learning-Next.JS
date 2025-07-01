import ProductList from "./ProductList";

const Products = async ({ searchParams }) => {
  const searchParam = await searchParams;
  console.log("Outer:", searchParam);

  const category = searchParam?.category || "all";
  const sort = searchParam?.sort || "default";
  const page = searchParam?.page || 1;

  return (
    <div>
      <main className="pt-24 px-4 min-h-screen bg-white">
        <h1 className="text-3xl font-bold text-gray-800 mb-4">
          Products Page:
        </h1>
        <p>
          Showing - category: {category}, sort: {sort} & page: {page}
        </p>
        <p className="text-gray-600 text-lg">This is a Products page.</p>

        <ProductList />
      </main>
    </div>
  );
};

export default Products;

// products?category=laptops&page=2&sort=price-asc
