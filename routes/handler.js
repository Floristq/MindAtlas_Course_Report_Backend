const express = require('express');
const router = express.Router();
const pool =  require('../config/db.js');

router.get('/report', async (req, res) => {
    pool.getConnection( (err, conn) => {
        if (err) throw err;

        try {
            const qry = 
            `SELECT users.firstname, users.surname, courses.description, enrolments.CompletionStatus, enrolments.enrolmentID
            FROM users 
            JOIN enrolments 
            ON users.userID = enrolments.userID 
            JOIN courses 
            on courses.courseID = enrolments.courseID`;
            conn.query(qry, (err, result) => {
                conn.release();
                if (err) throw err;
                res.send(JSON.stringify(result));
            });
        } catch (err) {
            console.log(err);
            res.end();
        }
    });
});

module.exports = router;