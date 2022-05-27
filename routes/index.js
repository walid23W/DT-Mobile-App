const express = require('express')
const actions = require('../methods/actions')
const router = express.Router()

//@desc Adding new user
//@route POST /adduser
router.post('/signup', actions.signup)

//@desc Authenticate a user
//@route POST /authenticate
router.post('/signin', actions.signin)


module.exports = router
