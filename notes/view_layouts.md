## Layouts and Rendering in Rails

**Creating Response:-**From the controller's point of view, there are three ways to create an HTTP response.

**1. render:-** Call render to create a full response to send back to the browser(view show).

**2. redirect_to:-** Call redirect_to to send an HTTP redirect status code to the browser(new page).

**3. head:-** Call head to create a response consisting solely of HTTP headers to send back to the browser(only status).

## Rendering by Default: Convention Over Configuration in Action
```class BooksController < ApplicationController
    def index
     @items = Item.all
    end
end
```
If we want to display the properties of all the items in our view, we can do so with an ERB template like this:

```<h1>Listing Books</h1>

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th colspan="3"></th>
    </tr>
  </thead>

  <tbody>
    <% @items.each do |item| %>
      <tr>
        <td><%= item.title %></td>
        <td><%= link_to "Show", item %></td>
        <td><%= link_to "Edit", edit_book_path(item) %></td>
        <td><%= link_to "Destroy", item, data: { turbo_method: :delete, turbo_confirm: "Are you sure?" } %></td>
      </tr>
    <% end %>
  </tbody>
</table>

<br>

<%= link_to "New item", new_book_path %>
```
**1. render:-**In most cases, the controller's render method does the heavy lifting of rendering your application's content for use by a browser.
