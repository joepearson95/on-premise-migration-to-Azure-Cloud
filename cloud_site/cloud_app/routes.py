from flask import render_template, url_for, flash, redirect, request
from cloud_app import app, db, bcrypt
from cloud_app.forms import RegistrationForm, LoginForm
from cloud_app.models import User
from flask_login import login_user, current_user, logout_user, login_required

@app.route('/')
def home():
    return render_template('home.html')

@app.route('/register', methods=['GET','POST'])
def register():
	form = RegistrationForm()
	return render_template('register.html', form=form)

@app.route('/login', methods=['GET', 'POST'])
def login():
	form = LoginForm()
	return render_template('login.html', form=form)

@app.route('/logout')
def logout():
	logout_user()
	return redirect(url_for('/'))