class LoginPage {
  
  elements = {
    usernameInput: () => cy.get('[type="email"]'),
    passwordInput: () => cy.get('[type="password"]'),
    loginBtn: () => cy.get('[type="submit"]'),
    errorMessage: () => cy.get('.Vue-Toastification__toast'),
  };

  typeUsername(username) {
    this.elements.usernameInput().type(username);
  }

  typePassword(password) {
    this.elements.passwordInput().type(password);
  }

  clickLogin() {
    this.elements.loginBtn().click();
  }

  submitLogin(username,password){
    this.elements.usernameInput().type(username);
    this.elements.passwordInput().type(password);
    this.elements.loginBtn().click();
  }
}

export const loginPage = new LoginPage();

