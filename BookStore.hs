-- Book Store 
-- BookInfo is a type constructor
-- Book is the value constructor / data constructor 
data BookInfo = Book Int String [String]
                |Text String 
                deriving (Show)

-- Pattern Matching on the ADT  "Book"
bookID (Book id title authors) = id 
bookTitle (Book id title authors) = title 
bookAuthors (Book id title authors) = authors


-- Pattern Matching using a wild card on the ADT "Book"
nicerID (Book id _ _ ) = id 
nicerTitle (Book _ title _ ) = title 
nicerAuthor (Book _ _ authors) = authors

data MagazineInfo = Magazine Int String [String] 
                    deriving (Show)


myBook = Book 97801350 "Algebra of Programming" ["Richard Bird","Oege de Moor"]

myMagazine = Magazine 97801350 "Daily Nation" ["Richard Bird","Oege de Moor"]


type CustomerID = Int 
type ReviewBody = String 
type BookRecord = (BookInfo,BookReview)

type CardHolder = String
type CardNumber = String 
type Address = [String]

data BookReview = BookReview BookInfo CustomerID ReviewBody


data BillingInfo = CreditCard CardNumber CardHolder Address 
                 | CashOnDelivery 
                 | Invoice CustomerID
                 deriving (Show)


cc = CreditCard "2916502210" "Hungai Kevin" ["Dickens","England"]



-- ADT with Record Syntax 

data Customer = Customer {
    customerID :: CustomerID
    , customerName :: String
    , customerAddress :: Address
} deriving (Show)


customer1 = Customer 271828 "J.R. Hacker" ["255 Syntax Ct","Milipitas, CA 95134","USA"]
customer2 = Customer { customerID = 271828 , customerAddress = ["10485 Disk Drive","Nairobi","Kenya"],customerName = "Hungai Kevin"}

