numbers = [1, 2, 3, 4, 5]
total = sum(numbers)
print(total)  # Output: 15

numbers = [1, 2, 3, 4, 5]
total = 0
for num in numbers:
    total += num
print(total)  # Output: 15


a = 5
b = 10
c = 7
total = a + b + c
print(total)  # Output: 22






def convert_temperature(temp, to_scale):
    """
    Convert temperature between Celsius and Fahrenheit.

    Parameters:
    temp (float): The temperature to convert.
    to_scale (str): The scale to convert to ("C" for Celsius or "F" for Fahrenheit).

    Returns:
    float: Converted temperature.
    """
    if to_scale == "F":
        # Convert Celsius to Fahrenheit
        return (temp * 9/5) + 32
    elif to_scale == "C":
        # Convert Fahrenheit to Celsius
        return (temp - 32) * 5/9
    else:
        raise ValueError("Invalid scale. Use 'C' for Celsius or 'F' for Fahrenheit.")

# Test cases
print(convert_temperature(100, "F"))  
print(convert_temperature(77, "C"))  





def sum_three_numbers(a, b, c):
    return a + b + c


def calculate_tip(bill_amount, tip_percentage=15):
    tip_amount = bill_amount * (tip_percentage / 100)
    total_bill = bill_amount + tip_amount
    return {'Tip Amount': tip_amount, 'Total Bill': total_bill}

# Test cases
print(calculate_tip(250))  


print(calculate_tip(100, 20))  








def display_menu():
    print("Welcome to MCIT Restaurant! Here’s our menu:")
    menu = {
        1: {"item": "Butter Chicken", "price": 10.50},
        2: {"item": "Veggie Burger", "price": 8.00},
        3: {"item": "Margherita Pizza", "price": 12.00},
        4: {"item": "Caesar Salad", "price": 7.50},
        5: {"item": "Mango Smoothie", "price": 5.00}
    }
    for num, details in menu.items():
        print(f"{num}. {details['item']} - ${details['price']}")
    return menu

def calculate_total(subtotal, tax_rate=0.08, tip_rate=0.15):
    tax = subtotal * tax_rate
    tip = subtotal * tip_rate
    total = subtotal + tax + tip
    return tax, tip, total

def main():
    menu = display_menu()
    subtotal = 0
    
    while True:
        try:
            choice = int(input("Enter the number of the item you want to order: "))
            if choice in menu:
                item = menu[choice]["item"]
                price = menu[choice]["price"]
                subtotal += price
                print(f"{item} added to your order. Price: ${price:.2f}")
            else:
                print("Invalid selection. Please try again.")
                continue
        except ValueError:
            print("Please enter a valid number.")
            continue

        more = input("Do you want to order more items? (yes or no): ").strip().lower()
        if more != "yes":
            break

    tax, tip, total = calculate_total(subtotal)
    
    print("\n--- Order Summary ---")
    print(f"Subtotal
