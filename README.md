# Trust Bank

**Trust Bank** is a modern, demo-ready digital banking app for students and educators, featuring:

- User sign-up and login
- Secure admin portal (hidden URL)
- Account management
- Real funds transfer (with email notifications via SendGrid)
- Transaction history
- Password reset (email link)
- Loan requests (user and admin workflows)
- Ready for free deployment (Vercel + Railway)

---

## 🚀 Features

- **User Registration** — Anyone can sign up for a new account
- **Login** — Secure JWT-based login for users and admins
- **Admin Portal** — Hidden admin login with user management
- **Transfers** — Users can send money to others by email; both get notified
- **Transaction History** — Users can see their deposits, withdrawals, and transfers
- **Password Reset** — “Forgot password” flow with secure reset link via email
- **Loan Requests** — Users can request loans; admins can approve/reject
- **Email Notifications** — Powered by Nodemailer and SendGrid
- **Easy Deployment** — Backend (Railway), Frontend (Vercel), PostgreSQL (free tier)

---

## 🗂️ Project Structure

```
trust-bank/
│
├── trustbank-backend/
│   ├── prisma/
│   │   └── schema.prisma
│   ├── src/
│   │   ├── app.js
│   │   ├── server.js
│   │   ├── controllers/
│   │   │   ├── authController.js
│   │   │   ├── adminController.js
│   │   │   ├── transferController.js
│   │   │   ├── transactionController.js
│   │   │   ├── passwordResetController.js
│   │   │   └── loanController.js
│   │   ├── middleware/
│   │   │   └── auth.js
│   │   ├── routes/
│   │   │   ├── auth.js
│   │   │   ├── admin.js
│   │   │   ├── transfer.js
│   │   │   ├── transaction.js
│   │   │   ├── passwordReset.js
│   │   │   └── loan.js
│   │   └── utils/
│   │       └── mailer.js
│   ├── package.json
│   └── .env.example
│
└── trustbank-frontend/
    └── public/
        ├── index.html
        ├── login.html
        ├── signup.html
        ├── dashboard.html
        ├── admin-portal.html
        ├── admin-dashboard.html
        ├── forgot-password.html
        ├── reset-password.html
        ├── styles/
        │   └── main.css
        └── assets/
```

---

## ⚙️ Backend Setup

1. **Clone this repo** and `cd trustbank-backend`.
2. **Install dependencies:**
   ```bash
   npm install
   ```
3. **Configure environment variables:**  
   Create a `.env` file (see `.env.example` for reference):

   ```
   DATABASE_URL=your-postgres-url
   JWT_SECRET=your-strong-secret
   SENDGRID_API_KEY=your-sendgrid-api-key
   EMAIL_FROM=your-verified-sender@example.com
   FRONTEND_URL=https://your-frontend-url (for password reset links)
   PORT=4000
   ```

4. **Set up the database:**
   ```bash
   npx prisma migrate deploy
   npx prisma generate
   ```

5. **Deploy to Railway:**  
   - Connect to GitHub or upload code.
   - Add environment variables in the Railway dashboard.
   - Railway will auto-deploy.

6. **Register your first admin:**  
   - POST to `/api/auth/admin/register` (then remove or secure this endpoint).

---

## 🌐 Frontend Setup

1. **Place all `public/` files into your Vercel project.**
2. **Update API URLs** in JS to point to your Railway backend.
3. **Deploy on Vercel:**  
   - Import your frontend folder/repo.
   - Vercel will host your static site for free.

---

## 📧 Email Setup (SendGrid)

1. Sign up at [sendgrid.com](https://sendgrid.com/) (free tier).
2. Create an API key and set it as `SENDGRID_API_KEY` in your backend `.env`.
3. Verify your sender email/domain in SendGrid and set it as `EMAIL_FROM`.

---

## 🏦 Feature Guide

### User Features

- **Sign Up:** `/signup.html` — create account
- **Login:** `/login.html`
- **Forgot Password:** `/forgot-password.html` (link on login)
- **Dashboard:** `/dashboard.html` — view balance, transfer funds, see history, request loans

### Admin Features

- **Admin Portal:** `/admin-portal.html` (hidden link)
- **Admin Dashboard:** `/admin-dashboard.html` — manage accounts, review loans

---

## 🛡️ Security & Best Practices

- Passwords are hashed with bcrypt.
- JWT for all authentication.
- Admin endpoints require proper JWT and role.
- After creating the first admin, disable/remove the `/api/auth/admin/register` endpoint!
- Use environment variables for all secrets.

---

## ✍️ Contributing

Pull requests are welcome! For major changes, open an issue first.

---

## 📄 License

MIT (or specify your own)

---

## 👋 Authors

- Your Name (and project partners)
- [Your Contact or GitHub]

---
