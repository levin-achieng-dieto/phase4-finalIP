import React, { Component } from 'react'
import './App.css'
import { Route, Routes } from 'react-router-dom'
import Login from './Auth/Login'
import Register from './Auth/Register'
import Airlines from './Airlines/Airlines'
import Airline from './Airline/Airline'
import Navbar from './Navbar'
import { AuthProvider } from './AuthContext'
// import ProtectedRoute from './ProtectedRoute'
import UnprotectedRoute from './UnprotectedRoute'

class App extends Component {
  render(){
    return(
      <AuthProvider>
        <Navbar/>
        <Route>
          <Route exact path="/" component={Airlines} />
          <Route exact path="/airlines/:slug" component={Airline} />
          <UnprotectedRoute path="/login" component={Login}/>
          <UnprotectedRoute exact path="/register" component={Register} />
<<<<<<< HEAD
          <UnprotectedRoute path="/forgot-password" component={Forgot}/>
          <UnprotectedRoute path="/reset-password" component={Reset}/>
        </Route>
=======
        </Switch>
>>>>>>> 8cda6aa7bb6b87594305f26b9900ce9b5eb61a74
      </AuthProvider>
    )
  }
}

export default App
