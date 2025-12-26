<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Student Registration</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">
    <div class="card shadow">
        <div class="card-header bg-primary text-white text-center">
            <h4>Student Registration</h4>
        </div>

        <div class="card-body">

            <form action="${pageContext.request.contextPath}/save" method="post">

                <!-- Hidden ID for Edit -->
                <input type="hidden" name="id" value="${student.id}" />

                <!-- Name -->
                <div class="mb-3">
                    <label class="form-label">Name</label>
                    <input type="text" name="name" class="form-control" value="${student.name}">
                    <c:if test="${not empty errors.name}">
                        <div class="text-danger">${errors.name}</div>
                    </c:if>
                </div>

                <!-- Email -->
                <div class="mb-3">
                    <label class="form-label">Email</label>
                    <input type="email" name="email" class="form-control" value="${student.email}">
                    <c:if test="${not empty errors.email}">
                        <div class="text-danger">${errors.email}</div>
                    </c:if>
                </div>

                <!-- Age -->
                <div class="mb-3">
                    <label class="form-label">Age</label>
                    <input type="number" name="age" class="form-control" value="${student.age}">
                    <c:if test="${not empty errors.age}">
                        <div class="text-danger">${errors.age}</div>
                    </c:if>
                </div>

                <!-- Course -->
                <div class="mb-3">
                    <label class="form-label">Course</label>
                    <input type="text" name="course" class="form-control" value="${student.course}">
                    <c:if test="${not empty errors.course}">
                        <div class="text-danger">${errors.course}</div>
                    </c:if>
                </div>

                <!-- Buttons -->
                <div class="text-center">
                    <button type="submit" class="btn btn-success px-4">Save</button>
                    <a href="${pageContext.request.contextPath}/students" class="btn btn-secondary px-4">Back</a>
                </div>

            </form>

        </div>
    </div>
</div>

</body>
</html>
