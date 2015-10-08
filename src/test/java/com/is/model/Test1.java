package com.is.model;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

public class Test1 {

	@Test
	public void test() {

		class Option {

			String name;
			int value;

			public String getName() {
				return name;
			}

			public void setName(String name) {
				this.name = name;
			}

			public int getValue() {
				return value;
			}

			public void setValue(int value) {
				this.value = value;
			}

		}

		List list = new ArrayList();
		Option option1 = new Option();
		option1.setName("Dog");
		option1.setValue(1);

		Option option2 = new Option();
		option2.setName("Cog");
		option2.setValue(3);

		Option option3 = new Option();
		option3.setName("Gog");
		option3.setValue(4);

		Option option4 = new Option();
		option4.setName("Yog");
		option4.setValue(2);

		Option option5 = new Option();
		option5.setName("Dog");
		option5.setValue(1);

		list.add(option1);
		list.add(option2);
		list.add(option3);
		list.add(option4);
		list.add(option5);

		for (int i = 0; i < list.size(); i++) {
			Option _option = (Option) list.get(i);
			System.out.println(_option.getName());
			System.out.println(_option.getValue());
		}

	}

}
