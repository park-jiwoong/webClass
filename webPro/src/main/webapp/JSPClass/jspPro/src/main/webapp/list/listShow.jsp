<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, org.doit.domain.NoteVO, com.util.DBConn2" %>
<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    ArrayList<NoteVO> noteList = new ArrayList<>();

    try {
        conn = DBConn2.getConnection("jdbc:oracle:thin:@localhost:1521:xe","VIBESYNC", "1234");
        String sql = "SELECT note_idx, title, text, create_at FROM note"; // 필요한 컬럼만 선택
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();

        while (rs.next()) {
            NoteVO note = NoteVO.builder()
                    .note_idx(rs.getInt("note_idx"))
                    .title(rs.getString("title"))
                    .text(rs.getString("text")) // text 컬럼 추가
                    .create_at(rs.getString("create_at")) // create_at 컬럼 추가
                    .build();
            noteList.add(note);
        }

    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Note List</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        table, th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        .note-text {
            max-width: 300px; /* Adjust as needed */
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
    </style>
</head>
<body>

    <h2>Note List</h2>

    <% if (noteList.isEmpty()) { %>
        <p>No notes found.</p>
    <% } else { %>
        <table>
            <thead>
                <tr>
                    <th>Note ID</th>
                    <th>Title</th>
                    <th>Text</th>
                    <th>Created At</th>
                </tr>
            </thead>
            <tbody>
                <% for (NoteVO note : noteList) { %>
                    <tr>
                        <td><%= note.getNote_idx() %></td>
                        <td><%= note.getTitle() %></td>
                        <td class="note-text"><%= note.getText() %></td>
                        <td><%= note.getCreate_at() %></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    <% } %>

</body>
</html>