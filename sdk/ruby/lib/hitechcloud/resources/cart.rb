module HiTechCloud
  module Resources
    class Cart < Base

        # List categories
        def categories
          @http.get("/api/category")
        end

        # List products
        def products(category_id)
          @http.get("/api/category/%{category_id}/product" % { category_id: category_id })
        end

        # Get order info
        def order_info(product_id)
          @http.get("/api/order/%{product_id}" % { product_id: product_id })
        end

        # Create order
        def create_order(product_id, data)
          @http.post("/api/order/%{product_id}" % { product_id: product_id }, data)
        end

        # Checkout
        def checkout(data)
          @http.post("/api/order", data)
        end

        # Get quote
        def quote(data)
          @http.post("/api/quote", data)
      end
    end
  end
end
