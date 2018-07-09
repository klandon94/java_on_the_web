package com.codingdojo.web.models;

public class Dog extends Animal implements Pet {

	public Dog (String name, String breed, int weight) {
		super(name,breed,weight);
	}
	@Override
	public String showAffection() {
		
		if (this.getWeight() < 30) return (this.getName() + " hopped into your lap and cuddled with you");
		return (this.getName() + " curled up next to you and let you pet him");
	}

}
