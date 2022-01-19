# Book store
class StoreItem
    @@allItems = Array.new
    attr_accessor :title, :price
    def initialize(tit, pri)
        @title = tit
        @price = pri
    end
    
    def print(object)
      puts object.inspect
     end
     
    def self.printList
        puts @@allItems.inspect
    end


    def self.deleteItem(delIt)
      @title = delIt
      bool = false
      i=0
      while i < @@allItems.length
        if @@allItems[i][0].include?(delIt) 
          @@allItems.delete_at(i)
          bool = true
        end
        i+=1
      end
      if bool == false
        puts "The Item Not Found"
      end

    end

    
    def self.range(from , to)
      i = 0
      while i < @@allItems.length
        if @@allItems[i][1] >= from && @@allItems[i][1] <= to
            puts @@allItems[i]
        end
        
      i= i+1
      end
    end

    def self.expensive()
      i = 0
      qq = 0
        while i < @@allItems.length
            if not @@allItems[i]== nil
                if @@allItems[i][1] > qq
                    qq = @@allItems[i][1]
                end
        i= i+1
        end
    end
    k = 0
      while k < @@allItems.length
        if @@allItems[k][1] == qq
            p @@allItems[k] 
        end
      k= k+1
      end
    end
end 



class Book < StoreItem
    attr_accessor :auth ,:pages, :isbn
    def initialize(tit = " ", pri = 0,aut = " ",pag = 0 ,isb = 0)
        super(tit, pri)
        @auth = aut
        @pages = pag
        @isbn = isb
       
    end
    
  

    def self.pushBook(tit,pri,aut,pag,isb)
      bookArray = Array.new
        @title = tit
        @price = pri
        @auth = aut
        @pages = pag
        @isbn = isb
      bookArray.push(@title, @price, @auth, @pages, @isbn) 
      @@allItems.push(bookArray)
    end
        
end

class Magazine < StoreItem
    attr_accessor :publisher, :date
    def initialize(tit = " ", pri=0, publ = " ",dat = 0000)
        super(tit, pri)
        @publisher = publ
        @date = dat
    end

    def self.pushMagazine(tit,pri,pub,dat)
      magArray = Array.new
        @title = tit
        @price = pri
        @publisher = pub
        @date = dat
      magArray.push(@title, @price, @publisher, @date) 
      @@allItems.push(magArray)
    end

    def self.searchPublisher(sename)
      @publisher = sename
      bool = false
      i=0
      while i < @@allItems.length
        if @@allItems[i][2].include?(sename) 
          puts @@allItems[i]
          bool = true
        end
        i+=1
      end
      if bool == false
        puts "The Publisher Name Not found"
      end
    end

    def self.searchDate(sedate)
      @date = sedate
      bool = false
      i=0
      while i< @@allItems.length
        if @@allItems[i][3].to_s.include?(sedate)
          puts @@allItems[i]
          bool = true
        end
        i+=1
      end
      if bool == false
        puts "The Date of Publish Not found"
      end
    end

end


#Add Item (Book or Magazine)

    # puts "chose item to add B for a book, M for a magazine"
    # kindOfitem = gets.chomp
    # if kindOfitem == "B"
    #     book =Book.new()
    #     puts "Enter book information: Title - Price - Author - Pages - isbn "
    #     book.title = gets.chomp
    #     book.price = gets.chomp.to_i
    #     book.auth = gets.chomp
    #     book.pages = gets.chomp.to_i
    #     book.isbn = gets.chomp.to_i
    #     Book.pushBook(book.title,book.price,book.auth,book.pages,book.isbn)

    # elsif kindOfitem =="M"
    #     mag =Magazine.new()
    #     puts "Enter Magazine information: Title - Price - Publisher - Date "

    #     mag.title = gets.chomp
    #     mag.price = gets.chomp.to_i
    #     mag.publisher =gets.chomp
    #     mag.date = gets.chomp.to_i
        
    #     Magazine.pushMagazine(mag.title,mag.price,mag.publisher,mag.date)
      
    # end



# Objects data

book1 = Book.pushBook("Ruby Cookbookce",67,"Lucas Carlsoages",400,9780596523695)

book2 = Book.pushBook("Ruby programming",90,"Jerry Lee",200,1730497513499)

book3 = Book.pushBook("Ruby datatypes",30,"Tom jack",150,5478913465295)

book4 = Book.pushBook("Ruby Class",200,"Chan Lee",240,1264398743530)


magazine1= Magazine.pushMagazine("Software Magazine",13,"IEEE","01-03-2022")

magazine2= Magazine.pushMagazine("Communications of the ACM",80,"ACM","2021") 

magazine3= Magazine.pushMagazine("eLearn",50,"ACM","2021")

magazine2= Magazine.pushMagazine("COVID-19",100,"IEEE","2022") 




## list expensive items
# StoreItem.expensive()


## books within range
# puts "Enter the lower price"
# x = gets.chomp.to_i
# puts "Enter the higher price"
# y = gets.chomp.to_i
# StoreItem.range(x,y)


## search Magazine by date

puts "Enter the Date of Publish"
w = gets.chomp
Magazine.searchDate(w)


## search Magazine by publisher

# puts "Enter the Publisher Name"
# z = gets.chomp
# Magazine.searchPublisher(z)


## list all items
#print(StoreItem.printList)

## delete an item by title

# puts "Enter the title you want to delete"
# de1 = gets.chomp

# StoreItem.deleteItem(de1)

# print(StoreItem.printList)


