## Stationary Shopping Cart Calculator: A VHDL Implementation in FPGA
The project aims to provide a simple solution for selecting products and their quantity, calculating the total price, and completing the transaction. The project involves selecting products and their quantity through switches, calculating the total price of the products, displaying the product name, count, and total price on 7-segment HEX displays, and storing the sale price in memory.

The implementation is carried out using several entities such as e_bcd7seg for computing decimal numbers to be displayed on HEX displays, e_nbit3to1mux for a 3 to 1 multiplexer, e_product_name_hex for converting the product name to bit format for displaying on HEX displays, and e_total_price_hex for converting total price to the 7-bit format. Other entities used are e_count_hex for converting the count of selected products to the 7-bit format, e_all_hex_display for displaying data on all the 6 HEX displays, t_mem for memory block and storing the sale price, and e_cart_calculator for the top-level entity.

The implementation of the shopping cart calculator is carried out using multiple states and two processes. The first process carries out the selection of the product and basic initialization, while the second process calculates the total price, displays the data on the HEX displays, and stores the sale price in memory.

## Hardware Definition:
The project uses switches to select one of the four products, and a key to increment or decrement the quantity of the selected product. The LEDR displays the current product selected. There are four states in the shopping cart process: Order, Price Calculation, Payment, and Done.

## Entities:
The project uses various entities to perform specific tasks, including e_bcd7seg for displaying decimal numbers on the 7-segment HEX displays, e_nbit3to1mux for a 3:1 multiplexer, e_product_name_hex for converting product names into a bit format, e_total_price_hex for converting the total price into a bit format, e_count_hex for converting the count of selected products into a bit format, and e_all_hex_display for displaying data on all 6 HEX displays. A memory block is described in VHDL, using t_mem, to store the sale price for later review.

## Usage:
To use the shopping cart calculator, select a product using the switches and increment or decrement the quantity using the key. The LEDR displays the current product selected, and the 7-segment HEX displays show the count of selected products. The Price Calculation state displays the total price, and the Payment state confirms payment. The Done state re-initializes all elements for a new process flow.
