from flask import Flask,render_template,request,redirect,url_for,flash
app=Flask(__name__)
app.secret_key="some-secret-key"
@app.route("/")
def index():
    return render_template("index.html")

@app.route("/contact",methods=["POST"])
def contact():
    name=request.form.get("name")
    email=request.form.get("email")
    message=request.form.get("message")
    flash("Thank you for your message")
    return redirect(url_for("index"))

if __name__=="__main__":
    app.run(debug=True)