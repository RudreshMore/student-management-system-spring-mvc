package in.rudresh.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.Data;
@Data
@Entity
@Table(name = "students")
public class Student {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@NotBlank(message = "Name is required")
	private String name;

	@Email
	@NotBlank
	private String email;

	@Min(value = 18)
	private int age;

	@NotBlank
	private String course;

	
}
