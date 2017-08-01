 3.times do |topic|
  Topic.create!(
   title: "Topic #{topic}"
   )
  
 end
 
 puts "3 topics created"
 
 
 
 8.times do |blog|
  Blog.create!(
     title: "Ruby on Rails #{blog}",
     body: "Lorem ipsum dolor sit amet, 
     consectetur adipiscing elit, sed do 
       eiusmod tempor incididunt ut labore et 
       dolore magna aliqua. Ut enim ad minim veniam,
       quis nostrud exercitation ullamco laboris nisi
       ut aliquip ex ea commodo consequat. Duis 
       aute irure dolor in reprehenderit in voluptate 
       velit esse cillum dolore eu fugiat nulla pariatur. 
       Excepteur sint occaecat cupidatat non proident, sunt
       in culpa qui officia deserunt mollit anim id est 
       laborum.", topic_id: Topic.last.id
       
    
    )
  end
  
  puts "10 Blog Posts Created" 
  
  5.times do |skill|
    Skill.create!(
      
      title: "Rails #{skill}",
      percent_utilized: 15
      
      
      )
    end
    
    puts "5 Skills Created"
    
    5.times do |portfolio_item|
    Portfolio.create!(
      
     title: "Portfolio Title: #{portfolio_item}",
     subtitle: "Angular",
     body: "Lorem ipsum dolor sit amet, 
     consectetur adipiscing elit, sed do 
       eiusmod tempor incididunt ut labore et 
       dolore magna aliqua. Ut enim ad minim veniam,
       quis nostrud exercitation ullamco laboris nisi
       ut aliquip ex ea commodo consequat. Duis 
       aute irure dolor in reprehenderit in voluptate 
       velit esse cillum dolore eu fugiat nulla pariatur. 
       Excepteur sint occaecat cupidatat non proident, sunt
       in culpa qui officia deserunt mollit anim id est 
       laborum.",
     main_image: "http://via.placeholder.com/600x400" ,
     thumb_image: "http://via.placeholder.com/350x200"

      
      )
    end
    
    puts "9 Portfolio Items Created"
    
    3.times do |technology|
    Technology.create!(
     name: "Technology #{technology}",
     portfolio_id: Portfolio.last.id
     )
    
    end
    
     puts "3 Technologies Created"
    
    