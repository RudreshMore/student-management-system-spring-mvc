package in.rudresh.serciceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.rudresh.entity.Student;
import in.rudresh.repo.StudentRepository;
import in.rudresh.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentRepository repo;

	@Override
	public void save(Student student) {
		repo.save(student);
	}

	@Override
	public List<Student> getAll() {
		return repo.findAll();
	}

	@Override
	public Student getById(Integer id) {
		return repo.findById(id).orElse(null);
	}

	@Override
	public void delete(Integer id) {
		repo.deleteById(id);
	}
}
