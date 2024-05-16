<%@ page contentType="text/html; charset=US-ASCII" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
            <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

                <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
                <html>

                <head>
                    <meta charset='utf-8'>
                    <link rel="shortcut icon" type="x-icon" href="">
                    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
                    <title>ABC Cars | Car List</title>
                    <meta name='viewport' content='width=device-width, initial-scale=1'>
                    <link rel="shortcut icon" type="image/png" href="/images/logoBrowser.png">
                    <link rel='stylesheet' type='text/css' media='screen' href='/css/style.css'>
                    <script src='/js/script.js'></script>

                    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/css/bootstrap.min.css"
                        rel="stylesheet">
                    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
                        rel="stylesheet">
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                </head>

                <body>

                    <%@ include file="header.jsp" %>
                        <div class="p-5 mt-4 text-center">
                            <h1 class="mb-4">User Manager</h1>

                            <table class="table table-striped table-bordered" style="margin: 0 auto;">
                                <thead class="bg-info">
                                    <tr>
                                        <th>User</th>
                                        <th>Username</th>
                                        <th>Email</th>
                                        <th>Mobile</th>
                                        <th>Address</th>
                                        <th>Action</th>
                                        <th>Role 1</th>
                                        <th>Role 2</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <c:forEach items="${userlists}" var="u" varStatus="status">
                                        <tr>
                                            <td>${u.getName()}</td>
                                            <td>${u.getUserName()}</td>
                                            <td>${u.getEmail()}</td>
                                            <td>${u.getMobile()}</td>
                                            <td>${u.getAddress()}</td>

                                            <td><a type="button" class="btn btn-info" href="/adminView?uid=${u.id}" style="background-color: #808080; border-color: #808080; color: white;"><i
                                                        class="far fa-eye"></i></a>
                                                <button type="button" class="btn btn-info" data-bs-toggle="modal" style="background-color: #28a745; border-color: #28a745; color: white;"
                                                    data-bs-target="#editModal${u.id}">
                                                    <i class="fas fa-edit" style="background-color: #28a745; border-color: #28a745; color: white;"></i>
                                                </button>

                                                <div class="modal fade" id="editModal${u.id}" tabindex="-1"
                                                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="editModalLabel">Update User
                                                                </h5>
                                                                <button type="button" class="btn-close" 
                                                                    data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">

                                                                <!-- User Update Form -->
                                                                <sf:form action="updateUser?uid=${u.id}" method="post"
                                                                    class="was-validated" modelAttribute="user">
                                                                    <div class="mb-3 mt-3">
                                                                        <label for="name"
                                                                            class="form-label">Name:</label> <input
                                                                            type="text" class="form-control"
                                                                            placeholder="Enter name" name="name"
                                                                            path="name" value="${u.name}"
                                                                            required="true" />
                                                                        <div class="valid-feedback">Valid.</div>
                                                                        <div class="invalid-feedback">That ain't allowed
                                                                        </div>
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="userName"
                                                                            class="form-label">Username:</label> <input
                                                                            type="text" class="form-control"
                                                                            id="userName" placeholder="Enter username"
                                                                            name="userName" path="userName"
                                                                            value="${u.userName}" required="true" />
                                                                        <div class="valid-feedback">Valid.</div>
                                                                        <div class="invalid-feedback">That ain't allowed
                                                                        </div>
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="email"
                                                                            class="form-label">Email:</label> <input
                                                                            type="email" class="form-control"
                                                                            placeholder="Enter username" name="email"
                                                                            path="email" value="${u.email}"
                                                                            required="true" />
                                                                        <div class="valid-feedback">Valid.</div>
                                                                        <div class="invalid-feedback">That ain't allowed
                                                                        </div>
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="mobile"
                                                                            class="form-label">Mobile:</label> <input
                                                                            type="text" class="form-control" id="mobile"
                                                                            placeholder="Enter mobile" name="mobile"
                                                                            path="mobile" value="${u.mobile}"
                                                                            required="true" />
                                                                        <div class="valid-feedback">Valid.</div>
                                                                        <div class="invalid-feedback">Please fill out
                                                                            this field.</div>
                                                                    </div>
                                                                    <div class="mb-3">
                                                                        <label for="address"
                                                                            class="form-label">Address:</label> <input
                                                                            type="text" class="form-control"
                                                                            id="address" placeholder="Enter address"
                                                                            name="address" path="address"
                                                                            value="${u.address}" required="true" />
                                                                        <div class="valid-feedback">Valid.</div>
                                                                        <div class="invalid-feedback">Please fill out
                                                                            this field.</div>
                                                                    </div>

                                                                    <button type="submit"
                                                                        class="btn btn-primary" style="background-color: #28a745; border-color: #28a745; color: white;">Update</button>
                                                                </sf:form>
                                                                <!-- User Update Form -->
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary"
                                                                    data-bs-dismiss="modal">Close</button>

                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>

                                                <a type="button" class="btn btn-danger" style="background-color: #af000f; border-color: #af000f; color: white;"
                                                    href="/deleteUser?uid=${u.id}"><i class="far fa-trash-alt"></i></a>
                                            </td>

                                            <c:forEach items="${u.roles}" var="r">
                                                <td>${r.name}<!-- Button trigger modal -->
                                                    <button type="button" class="btn" data-bs-toggle="modal"
                                                        data-bs-target="#roleModal${u.id}">
                                                        <i class="fas fa-edit fa-sm"></i>
                                                    </button> <!-- Modal -->

                                                    <div class="modal fade" id="roleModal${u.id}" tabindex="-1"
                                                        aria-labelledby="exampleModalLabel" aria-hidden="true"
                                                        role="dialog">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="roleModalLabel">Assign
                                                                        as Admin</h5>
                                                                    <button type="button" class="btn-close"
                                                                        data-bs-dismiss="modal"
                                                                        aria-label="Close"></button>
                                                                </div>
                                                                <div class="modal-body">

                                                                    <!-- Assign Admin Form -->
                                                                    <sf:form action="/roleChange?uid=${u.id}"
                                                                        method="post" class="was-validated"
                                                                        modelAttribute="user">
                                                                        <div class="mb-3 mt-3">


                                                                            <input type="radio" id="admin" name="role"
                                                                                value="Admin">
                                                                            <label for="admin">Admin</label><br>
                                                                            <input type="radio" id="user" name="role"
                                                                                value="Users">
                                                                            <label for="user">Users</label>
                                                                        </div>

                                                                        <button type="submit"
                                                                            class="btn btn-primary" style="background-color: #28a745; border-color: #28a745; color: white;">Assign</button>
                                                                    </sf:form>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                            </c:forEach>

                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>

                </body>
                <%@ include file="footer.jsp" %>

                </html>