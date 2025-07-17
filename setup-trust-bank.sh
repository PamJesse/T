#!/bin/bash
set -e

echo "Creating Trust Bank project structure..."

mkdir -p trust-bank/trustbank-backend/prisma
mkdir -p trust-bank/trustbank-backend/src/{controllers,middleware,routes,utils}
mkdir -p trust-bank/trustbank-frontend/public/{styles,assets}

cat > trust-bank/README.md <<'END'
````markdown name=README.md
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
