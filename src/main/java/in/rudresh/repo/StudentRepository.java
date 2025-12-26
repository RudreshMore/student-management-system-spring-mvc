package in.rudresh.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import in.rudresh.entity.Student;

public interface StudentRepository extends JpaRepository<Student, Integer> {
}
