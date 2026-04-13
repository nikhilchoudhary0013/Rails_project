## Views:-  
 Handles rendering responses in different formats like HTML, JSON, XML, etc.(ui create).


## Template:-
**1. .erb:-** Ruby HTML,(.html.erb)
**2. .jbuilder:-** JSON,(.json.jbuilder)
**3. .builder:-** XML(.xml.builder).

**1. ERB:-** Embedded Ruby.(which allows using Ruby code within HTML documents.)
   An ERB template is a way to sprinkle Ruby code within static HTML using special ERB tags like <% %> and <%= %>.

 **A. <% %> :-** The <% %> tag is used when you  want to execute Ruby code but not directly output the result,such as conditions or loops.

 **B. <%= %> :-** The <%= %> tag is used for ruby code that generates an output and you want that output rendered within the template. 

 example:-

 ```<h1>Names</h1>
 <% @people.each do |person| %> # execute code
   Name: <%= person.name %><br> # generate output
 <% end %>
 ```

**2. Jbuilder:-** jbuilder is a gem thats maintained by the Rails team and included in the defoult Rails Gemfile.
              it is used to build json responses using template.

```example:-
  json.name("nikhil")
  json.email("nikhil@123.com")
```
would produce:
```{
   "name": "Alex",
   "email": "alex@example.com"
  }
```
**3. Builder:-** Builder templates are a more programmatic alternative to ERB. It's generate XML.
 
 example:-
```xml
 xml.div {
  xml.h1(@person.name)
  xml.p(@person.bio)
 }
```
would produce something like:-
```
<div>
  <h1>David Heinemeier Hansson</h1>
  <p>A product of Danish Design during the Winter of '79...</p>
</div>
```
## Partials:-
Partial templates are a way of breaking up the view template into smaller reusable chunks.

**1. Rendering Partials:-** To render a partial as part of a view, you use the render method within the view.

```<%= render "product" %>
```

