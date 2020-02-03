class CoffeeMachine:
	def __init__(self, milk,coffee,sugar):
		self.milk = milk
		self.coffee = coffee
		self.sugar = sugar
	def make_coffee(self,milk,coffee,sugar):
			if milk > self.milk and coffee > self.coffee and sugar > self.sugar:
				res1 = milk - self.milk
				res2 = coffee - self.coffee
				res3 = sugar - self.sugar
				print(f"Not enough everything!\nmilk -{res1}\ncoffee -{res2}\nsugar -{res3}")
			elif milk > self.milk and coffee > self.coffee and sugar < self.sugar:
				res1 = milk - self.milk
				res2 = coffee - self.coffee
				print(f"Not enough milk! -{res1} & coffee -{res2}")
			elif milk > self.milk and coffee < self.coffee and sugar > self.sugar:
				res1 = milk - self.milk
				res2 = coffee - self.coffee
				print(f"Not enough milk! -{res1} & sugar -{res2}")
			elif milk < self.milk and coffee > self.coffee and sugar > self.sugar:
				res1 = sugar - self.sugar
				res2 = coffee - self.coffee
				print(f"Not enough coffee! -{coffee} & sugar -{sugar}")
			elif milk > self.milk and coffee < self.coffee and sugar < self.sugar:
				res1 = milk - self.milk
				print(f"Not enough milk! -{res1}")
			elif milk < self.milk and coffee > self.coffee and sugar < self.sugar:
				res1 = coffee - self.coffee
				print(f"Not enough coffee! -{res1}")
			elif milk < self.milk and coffee < self.coffee and sugar > self.sugar:
				res1 = sugar - self.sugar	
				print(f"Not enough sugar -{res1}")
			elif milk < self.milk and coffee < self.coffee and sugar < self.sugar:
				self.__substract_milk(milk)
				self.__substract_coffee(coffee)
				self.__subtsract_sugar(sugar)
				print(f"Coffee is ready!\nmilk-{self.milk}\ncoffee-{self.coffee}\nsugar{self.sugar}")
	def __substract_milk(self,milk):
		self.milk -= milk	
	def __substract_coffee(self,coffee):
		self.coffee -= coffee
	def __subtsract_sugar(self,sugar):
		self.sugar -= sugar
def main():
	coffemachine = CoffeeMachine(1000,1000,1000)
	coffemachine.make_coffee(int(input("Milk: ")),int(input("Cofee: ")),int(input("Sugar: ")))
if __name__ == "__main__":
	main()