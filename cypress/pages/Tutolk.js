class LoginCred = {

     element= {
        userEmail: () => cy.get("[type='email']"),
        userPassword: () => cy.get("[type='password']"),
        submitButton: () => cy.get("[type='submit']")
    }

    
  }
  
  export const login_cred = new LoginCred();
  