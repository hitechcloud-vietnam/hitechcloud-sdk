module HiTechCloud
  module Resources
    class Contacts < Base

        # List contacts
        def contacts
          @http.get("/api/contact")
        end

        # Create contact
        def create_contact(data)
          @http.post("/api/contact", data)
        end

        # Get privileges
        def privileges
          @http.get("/api/contact/privileges")
        end

        # Get contact
        def contact(id)
          @http.get("/api/contact/%{id}" % { id: id })
        end

        # Update contact
        def update_contact(id, data)
          @http.put("/api/contact/%{id}" % { id: id }, data)
      end
    end
  end
end
