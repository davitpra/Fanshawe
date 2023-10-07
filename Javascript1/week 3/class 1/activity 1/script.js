//2.- Prompt the user to enter the followign information 
// First Name: example input is: John
// Last Name: example input is: Smith
// Email: example input is: johnsmith@email.ca
// Phone: example input is: (555)-555-5555

var firtName = prompt (' please enter your first name')
var lastName = prompt (' please enter your last name')
var email = prompt (' please enter your email')
var phone = prompt (' please enter your phone in the next format (555)-555-5555')

//3.- Create the following constants:
const HST_TAX = 0.13
const CHOCOLATE_COOKIE_PRICE = 3.99
const PEANUT_COOKIE_PRICE = 4.99

//4.- Prompt the user for the number of each cookie they would like.

var chocolateCookies = parseInt(prompt ('How many chocolate cookies would you like?'))

var peanutButterCookies = parseInt(prompt ('How many peanut butter cookies would you like?'))

//5.- Calculate the subtotal for all ordered cookies, and store the number in an appropriately

var subTotal = (chocolateCookies* CHOCOLATE_COOKIE_PRICE + peanutButterCookies*PEANUT_COOKIE_PRICE)

//6.- Calculate the amount of tax on the order using the constant
var tax = (subTotal*HST_TAX)

//7.- calculate the total price

var total = subTotal + tax

//8.- Calculate how many boxes are needed for the cookies. Each box can hold 6 cookies. Make sure we only have full boxes

var boxes = Math.floor((chocolateCookies + peanutButterCookies) / 6)

//9.- Any cookies that don’t fit into a box go into individual bags, save the number of bags needed using an appropriately named variable.

var individualBags = (chocolateCookies + peanutButterCookies)%6

//10.- Output to the console the following and show all dollar values to 2 decimal places.

console.log(`Custumer Full Name: ${firtName} ${lastName}`)
console.log(`Email: ${email}`)
console.log(`Phone: ${phone}`)
console.log(`Chocolate cookies: ${chocolateCookies}`)
console.log(`Peanut butter cookies: ${peanutButterCookies}`)
console.log(`Subtotal: $${subTotal.toFixed(2)}`)
console.log(`Tax: $${tax.toFixed(2)}`)
console.log(`Total: $${total.toFixed(2)}`)
console.log(`Number of boxes: ${boxes}`)
console.log(`Number of bags: ${individualBags}`)
