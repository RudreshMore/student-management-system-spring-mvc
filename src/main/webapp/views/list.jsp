<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Student List</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body class="bg-light">

	<div class="container mt-5">

		<div class="d-flex justify-content-between mb-3">
			<h3>Student List</h3>
			<a href="${pageContext.request.contextPath}/register"
				class="btn btn-primary"> + Add Student </a>
		</div>

		<div class="card shadow">
			<div class="card-body">

				<table class="table table-bordered table-hover text-center">
					<thead class="table-dark">
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Email</th>
							<th>Age</th>
							<th>Course</th>
							<th>Action</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="s" items="${students}">
							<tr>
								<td>${s.id}</td>
								<td>${s.name}</td>
								<td>${s.email}</td>
								<td>${s.age}</td>
								<td>${s.course}</td>
								<td><a href="edit/${s.id}" class="btn btn-warning btn-sm">Edit</a>
									<a href="delete/${s.id}" class="btn btn-danger btn-sm"
									onclick="return confirm('Are you sure you want to delete?')">
										Delete  </td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>

	</div>

</body>
</html>
s