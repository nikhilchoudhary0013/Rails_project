Views:- Handles rendering responses in different formats like HTML, JSON, XML, etc.(ui create).


Template:-
1. .erb:- Ruby HTML,(.html.erb)
2. .jbuilder:- JSON,(.json.jbuilder)
3. .builder:- XML(.xml.builder).

1. ERB:- Embedded Ruby.
   An ERB template is a way to sprinkle Ruby code within static HTML using special ERB tags like <% %> and <%= %>.

 A. <% %> :- The <% %> tag is used when you  want to execute Ruby code but not directly output the result,such as conditions or loops.

 B. <%= %> :- The <%= %> tag is used for ruby code that generates an output and you want that output rendered within the template. 

 example:-

 <h1>Names</h1>
 <% @people.each do |person| %> # execute code
   Name: <%= person.name %><br> # generate output
 <% end %>

2. Jbuilder:- 
