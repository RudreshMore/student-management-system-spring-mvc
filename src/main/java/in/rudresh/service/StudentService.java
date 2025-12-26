package in.rudresh.service;

import java.util.List;

import in.rudresh.entity.Student;

public interface StudentService {

	void save(Student student);

	List<Student> getAll();

	Student getById(Integer id);

	void delete(Integer id);
}
