package com.codingdojo.web.models;

public class Cat extends Animal implements Pet  {

	public Cat(String name, String breed, int weight) {
		super(name, breed, weight);
	}
	@Override
	public String showAffection() {
		return("Your " + this.getBreed() + " cat, " + this.getName() + ", looked at you with some affection. You think. Wait, that's not possible. Because it's a cat.");
	}

}
