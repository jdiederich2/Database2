-- Specify the database to use.
-- If you don't have boardgames yet, right click in your schemas pane to the
--   left and create a new schema.
USE gifthorse;

-- Create the customer table and define the columns and primary key
CREATE TABLE IF NOT EXISTS `customer` (
  `CustID` int(4)  ZEROFILL NOT NULL AUTO_INCREMENT,
  `CustFname` char(15) NOT NULL,
  `CustLname` char(15) NOT NULL,
  `CustAddr` char(45) NOT NULL,
  `CustCity` char(15) NOT NULL,
  `CustState` char(2) NOT NULL,
  `CustZip` int(5) NOT NULL,
  PRIMARY KEY (`CustID`)
  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Create the orders table and define the columns and primary key
CREATE TABLE IF NOT EXISTS `orders` (
  `OrdID` int(11) NOT NULL,
  `CustID` int(4)  ZEROFILL NOT NULL,
  `OrdDate` date NOT NULL,
  `PaidDate` date NOT NULL,
  `ShipDate` date NOT NULL,
  `ShipCoID` int(11) NOT NULL,
  `ShipToCustID` int(4)  ZEROFILL NOT NULL,
  PRIMARY KEY (`OrdID`),
  FOREIGN KEY (CustID) REFERENCES customer(CustID),
  FOREIGN KEY (ShipToCustID) REFERENCES customer(CustID)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Create the ship company table and define the columns and primary key
CREATE TABLE IF NOT EXISTS `shipper` (
  `ShipCoID` int(2) NOT NULL,
  `ShipCompany` char(30) NOT NULL,
  PRIMARY KEY (`ShipCoID`)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Create the intersection table orderline and define the columns and primary key
CREATE TABLE IF NOT EXISTS `orderline` (
  `OrdID` int(11) NOT NULL,
  `ProdID` char(3) NOT NULL,
  `ProdQty` int(3) NOT NULL,
  `UnitPrice` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`OrdID`,`ProdID`)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Create the product table and define the columns and primary key
CREATE TABLE IF NOT EXISTS `product` (
  `ProdID` char(3) NOT NULL,
  'ProdName' char(45) NOT NULL,
  `ProdDesc` char(255) NOT NULL,
  `ProdPrice` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`ProdID`)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Create the vendor table and define the columns and primary key
CREATE TABLE IF NOT EXISTS `vendor` (
  `VendID` int(2) ZEROFILL NOT NULL, 
  `VendCompany` char(30) NOT NULL,
  `VendCity` char(15) NOT NULL,
  PRIMARY KEY (`VendID`)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Create the items table and define the columns and primary key
CREATE TABLE IF NOT EXISTS `items` (
  `ItemID` int(4) ZEROFILL NOT NULL,
  `VendID` int(2) ZEROFILL NOT NULL,
  `ItemDesc` char(45) NOT NULL,
  `ItemPrice` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`ItemID`),
  FOREIGN KEY (VendID) REFERENCES vendor(VendID)
  
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Create the intersection table BasketContents and define the columns and primary key
CREATE TABLE IF NOT EXISTS `basketcontents` (
  `ProdID` char(3) NOT NULL,
  `ItemID` int(4) ZEROFILL NOT NULL,
  `ItemQty` decimal(5, 2) NOT NULL,
  PRIMARY KEY (`ProdID`, `ItemID`)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;


