<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>@yield('title', 'Catalogs')</title>
    <link rel="icon" href="{{ asset('favicon.ico') }}?v=4" sizes="any">
    <link rel="icon" type="image/png" href="{{ asset('brand/favicon.png') }}?v=4" sizes="32x32">
    @stack('head')
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:wght@400;700&family=Manrope:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            color-scheme: light;
            --ink: #1a1814;
            --muted: #6f675e;
            --line: #e7e1d8;
            --paper: #f3f0ea;
            --card: #fff;
            --gold: #8d6a2f;
            --gold-soft: #f6f0e6;
            --sale: #9c3030;
            --ok: #1f7a45;
            --shadow: 0 10px 30px rgba(26, 24, 20, .06);
        }
        * { box-sizing: border-box; }
        body {
            margin: 0;
            color: var(--ink);
            background: var(--paper);
            font-family: Manrope, "Segoe UI", sans-serif;
        }
        a { color: inherit; }
        header {
            position: sticky;
            top: 0;
            z-index: 10;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 16px 5vw;
            background: #12110f;
            color: #f7f3ec;
        }
        .brand { display: flex; align-items: center; gap: 12px; text-decoration: none; }
        .brand img { display: block; height: 52px; width: auto; }
        .brand-name span {
            display: block;
            color: #c8b89a;
            font-size: 11px;
            letter-spacing: .16em;
            text-transform: uppercase;
        }
        .brand-name strong {
            font-family: "Libre Baskerville", Georgia, serif;
            font-size: 22px;
            font-weight: 400;
        }
        header nav { display: flex; align-items: center; gap: 8px; }
        header nav a {
            color: #f7f3ec;
            text-decoration: none;
            padding: 8px 14px;
            border-radius: 999px;
            font-size: 14px;
            font-weight: 600;
        }
        header nav a.active, header nav a:hover { background: rgba(255, 255, 255, .1); }
        header nav form { margin: 0; }
        header nav button {
            background: transparent;
            color: #f7f3ec;
            border: 0;
            padding: 8px 14px;
            border-radius: 999px;
            font-size: 14px;
            font-weight: 600;
        }
        header nav button:hover { background: rgba(255, 255, 255, .1); }
        .account { position: relative; }
        .account summary {
            list-style: none;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            min-width: 96px;
            padding: 4px 16px 4px 6px;
            border-radius: 999px;
            color: #f7f3ec;
            font-size: 14px;
            font-weight: 600;
        }
        .account-face {
            width: 28px;
            height: 28px;
            border-radius: 50%;
            object-fit: cover;
            flex: none;
            background: #3a342c;
            color: #f3eadc;
            overflow: hidden;
        }
        img.account-face { display: block; }
        span.account-face {
            display: grid;
            place-items: center;
            font-size: 12px;
            font-weight: 700;
        }
        .account summary::-webkit-details-marker { display: none; }
        .account summary::marker { content: ""; }
        .account summary:hover, .account[open] summary { background: rgba(255, 255, 255, .1); }
        .account-menu {
            position: absolute;
            right: 0;
            top: calc(100% + 8px);
            z-index: 20;
            min-width: 200px;
            background: #fff;
            color: var(--ink);
            border: 1px solid var(--line);
            border-radius: 14px;
            box-shadow: var(--shadow);
            padding: 6px;
            display: grid;
        }
        .account-menu a, header nav .account-menu button {
            display: flex;
            justify-content: flex-start;
            width: 100%;
            margin: 0;
            padding: 10px 12px;
            border: 0;
            border-radius: 10px;
            background: transparent;
            color: var(--ink);
            font-size: 14px;
            font-weight: 600;
            text-align: left;
            text-decoration: none;
        }
        header nav .account-menu a:hover,
        header nav .account-menu a.active,
        header nav .account-menu button:hover { background: #f6f1ea; color: var(--ink); }
        header nav .account-menu button.menu-logout { color: var(--sale); }
        .notices { position: relative; }
        .notices summary {
            position: relative;
            list-style: none;
            cursor: pointer;
            width: 40px;
            height: 40px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            color: #f7f3ec;
        }
        .notices summary::-webkit-details-marker { display: none; }
        .notices summary::marker { content: ""; }
        .notices summary:hover, .notices[open] summary { background: rgba(255, 255, 255, .1); }
        .notices summary svg { width: 18px; height: 18px; fill: none; stroke: currentColor; stroke-width: 1.8; stroke-linecap: round; stroke-linejoin: round; }
        .notice-count {
            position: absolute;
            top: 2px;
            right: 2px;
            min-width: 16px;
            height: 16px;
            padding: 0 4px;
            border-radius: 999px;
            background: var(--gold);
            color: #12110f;
            font-size: 10px;
            font-weight: 700;
            line-height: 16px;
            text-align: center;
        }
        .notice-menu {
            position: absolute;
            right: 0;
            top: calc(100% + 8px);
            z-index: 20;
            width: min(300px, calc(100vw - 32px));
            max-height: 360px;
            overflow: auto;
            background: #fff;
            color: var(--ink);
            border: 1px solid var(--line);
            border-radius: 14px;
            box-shadow: var(--shadow);
            padding: 6px;
            display: grid;
        }
        .notice-head {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 8px;
            padding: 8px 12px 6px;
        }
        .notice-head strong { font-size: 13px; }
        .notice-menu form { margin: 0; }
        header nav .notice-menu button.notice-clear {
            display: inline;
            width: auto;
            margin: 0;
            padding: 0;
            border: 0;
            border-radius: 0;
            background: transparent;
            color: var(--gold);
            font-size: 12px;
            font-weight: 700;
            text-align: right;
        }
        header nav .notice-menu button.notice-clear:hover { background: transparent; color: var(--ink); }
        header nav .notice-menu button {
            display: grid;
            gap: 2px;
            width: 100%;
            margin: 0;
            padding: 10px 12px;
            border: 0;
            border-radius: 10px;
            background: var(--gold-soft);
            color: var(--ink);
            font-size: 13px;
            font-weight: 500;
            text-align: left;
            white-space: normal;
        }
        header nav .notice-menu button.is-read { background: transparent; }
        header nav .notice-menu button strong { font-size: 13px; font-weight: 700; }
        header nav .notice-menu button span { color: var(--muted); font-size: 12px; font-weight: 500; line-height: 1.4; }
        header nav .notice-menu button:hover { background: #f6f1ea; color: var(--ink); }
        .notice-empty { margin: 0; padding: 14px 12px; color: var(--muted); font-size: 13px; }
        .account-person {
            display: flex;
            align-items: center;
            gap: 10px;
            padding: 8px 10px 12px;
            margin-bottom: 4px;
            border-bottom: 1px solid var(--line);
        }
        .account-person .account-face { width: 42px; height: 42px; background: #1c1a17; font-size: 16px; }
        .account-person strong, .account-person span { display: block; }
        .account-person span { margin-top: 2px; color: var(--muted); font-size: 12px; font-weight: 500; }
        .plan-grid { display: grid; grid-template-columns: repeat(3, minmax(0, 1fr)); gap: 16px; }
        .plan { display: grid; gap: 8px; align-content: start; min-height: 390px; }
        .plan h2 { margin: 0; font-family: "Libre Baskerville", Georgia, serif; font-size: 28px; font-weight: 400; }
        .plan p { margin: 0; color: var(--muted); }
        .plan-price { margin: 0; display: flex; align-items: baseline; gap: 6px; font-family: "Libre Baskerville", Georgia, serif; font-size: 40px; line-height: 1; color: var(--ink); }
        .plan-price span { font-family: Manrope, "Segoe UI", sans-serif; font-size: 14px; font-weight: 600; color: var(--muted); }
        .plan ul { margin: 6px 0 0; padding-left: 18px; color: var(--muted); line-height: 1.6; }
        .plan.current { outline: 2px solid var(--gold); }
        .plan .pill, .plan .subscribe { justify-self: start; margin-top: auto; }
        .plan .subscribe { display: inline-block; border: 0; border-radius: 999px; padding: 10px 18px; background: #12110f; color: #f7f3ec; font-weight: 700; text-decoration: none; }
        .plan .subscribe:hover { background: #2a261f; color: #fff; }
        .pay-board { display: grid; grid-template-columns: minmax(240px, .8fr) minmax(0, 1.2fr); gap: 18px; align-items: start; }
        .pay-summary { display: grid; gap: 8px; align-content: start; }
        .pay-summary h2 { margin: 0; font-family: "Libre Baskerville", Georgia, serif; font-size: 32px; font-weight: 400; }
        .pay-summary .plan-price { margin-top: 4px; }
        .pay-form { display: grid; gap: 14px; min-width: 0; }
        .pay-form .field, .pay-row { min-width: 0; }
        .pay-form input, .notify-form input, .notify-form select, .notify-form textarea { width: 100%; min-width: 0; }
        .notify-form { display: grid; gap: 14px; }
        .notify-form button { border: 0; border-radius: 999px; padding: 12px 20px; background: #12110f; color: #f7f3ec; font-weight: 700; cursor: pointer; justify-self: start; }
        .notify-form button:hover { background: #2a261f; }
        .notify-form textarea { min-height: 110px; resize: vertical; }
        .notify-sent { margin-top: 16px; display: grid; }
        .notify-sent article { display: flex; align-items: center; justify-content: space-between; gap: 16px; padding: 14px 4px; }
        .notify-sent article > div:first-child { display: grid; gap: 4px; min-width: 0; }
        .notify-sent article + article { border-top: 1px solid var(--line); }
        .notify-sent h2 { margin: 0; font-size: 16px; }
        .notify-sent p { margin: 0; color: var(--muted); }
        .pay-row { display: grid; grid-template-columns: minmax(0, 1fr) 120px; gap: 12px; }
        .pay-form button { border: 0; border-radius: 999px; padding: 12px 20px; background: #12110f; color: #f7f3ec; font-weight: 700; cursor: pointer; justify-self: start; }
        .pay-form button:hover { background: #2a261f; }
        .plan-sheet { margin-top: 28px; display: grid; gap: 14px; }
        .plan-scale { display: grid; grid-template-columns: repeat(4, minmax(0, 1fr)); background: #12110f; color: #f7f3ec; border-radius: 18px; overflow: hidden; }
        .plan-scale div { display: grid; gap: 4px; padding: 18px 20px; }
        .plan-scale div + div { box-shadow: inset 1px 0 0 rgba(255, 255, 255, .08); }
        .plan-scale span { color: #c8b89a; font-size: 11px; font-weight: 700; letter-spacing: .12em; text-transform: uppercase; }
        .plan-scale strong { font-family: "Libre Baskerville", Georgia, serif; font-size: 28px; font-weight: 400; }
        .plan-ledger { display: grid; padding: 6px 8px; }
        .plan-ledger > div { display: grid; grid-template-columns: 120px minmax(0, 1fr); gap: 18px; align-items: baseline; padding: 16px 14px; }
        .plan-ledger > div + div { border-top: 1px solid var(--line); }
        .plan-ledger span { color: var(--gold); font-size: 12px; font-weight: 700; letter-spacing: .08em; text-transform: uppercase; }
        .plan-ledger p { margin: 0; line-height: 1.55; }
        .profile-board { display: grid; grid-template-columns: 280px minmax(0, 1fr); gap: 18px; align-items: start; }
        .profile-photo { display: grid; justify-items: center; text-align: center; gap: 10px; padding: 28px 18px; }
        .avatar {
            position: relative;
            width: 168px;
            height: 168px;
            border-radius: 50%;
            overflow: hidden;
            background: #1c1a17;
            color: #f3eadc;
            cursor: pointer;
            display: grid;
            place-items: center;
        }
        .avatar img { width: 100%; height: 100%; object-fit: cover; display: block; }
        .avatar span {
            font-family: "Libre Baskerville", Georgia, serif;
            font-size: 64px;
            line-height: 1;
        }
        .avatar input {
            position: absolute;
            width: 1px;
            height: 1px;
            padding: 0;
            margin: -1px;
            overflow: hidden;
            clip: rect(0, 0, 0, 0);
            border: 0;
            white-space: nowrap;
        }
        .avatar-name { margin: 6px 0 0; font-family: "Libre Baskerville", Georgia, serif; font-size: 26px; }
        .profile-details { display: grid; gap: 14px; }
        .profile-details input[readonly] { background: #f7f4ef; color: var(--muted); }
        .profile-role { margin: 0; font-weight: 700; }
        .notify {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            padding: 14px 0 2px;
            border-top: 1px solid var(--line);
        }
        .notify strong { display: block; }
        .notify p { margin: 4px 0 0; color: var(--muted); font-size: 13px; }
        .switch { position: relative; width: 48px; height: 28px; flex: none; }
        .switch input[type="checkbox"] {
            position: absolute;
            inset: 0;
            width: 100%;
            height: 100%;
            margin: 0;
            padding: 0;
            opacity: 0;
            cursor: pointer;
            z-index: 1;
        }
        .switch span {
            position: absolute;
            inset: 0;
            background: #e4ddd3;
            border-radius: 999px;
            transition: background .18s ease;
        }
        .switch span::after {
            content: "";
            position: absolute;
            width: 22px;
            height: 22px;
            left: 3px;
            top: 3px;
            background: #fff;
            border-radius: 50%;
            box-shadow: 0 1px 3px rgba(26, 24, 20, .2);
            transition: transform .18s ease;
        }
        .switch input:checked + span { background: var(--ok); }
        .switch input:checked + span::after { transform: translateX(20px); }
        .switch input:focus-visible + span { outline: 2px solid #e6d3ae; }
        .auth-card { width: min(440px, 100%); margin: 24px auto; display: grid; gap: 14px; }
        .auth-card h1 { margin: 0; font-family: "Libre Baskerville", Georgia, serif; font-size: 32px; font-weight: 400; }
        .auth-card p { margin: 0; color: var(--muted); }
        .check { display: flex; align-items: center; gap: 8px; font-size: 14px; }
        input[type="checkbox"] { width: 16px; height: 16px; padding: 0; accent-color: var(--gold); }
        .toast-stack {
            position: fixed;
            top: 96px;
            right: 24px;
            z-index: 30;
            display: grid;
            gap: 10px;
            width: min(340px, calc(100vw - 32px));
        }
        .toast {
            position: relative;
            display: flex;
            align-items: center;
            gap: 12px;
            width: 100%;
            margin: 0;
            padding: 14px 12px 14px 14px;
            background: #fff;
            color: var(--ink);
            border: 1px solid var(--line);
            border-radius: 16px;
            box-shadow: 0 18px 40px rgba(26, 24, 20, .14);
            overflow: hidden;
            animation: toast-in .55s cubic-bezier(.16, 1, .3, 1);
        }
        .toast p { margin: 0; font-size: 14px; font-weight: 600; }
        .toast-body { display: block; margin-top: 2px; color: var(--muted); font-size: 12px; font-weight: 500; line-height: 1.4; }
        .toast-mark {
            width: 32px;
            height: 32px;
            border-radius: 50%;
            background: var(--gold-soft);
            color: var(--gold);
            display: grid;
            place-items: center;
            flex: none;
            animation: toast-pop .45s cubic-bezier(.2, .9, .3, 1.35) .08s both;
        }
        .toast-mark svg {
            width: 16px;
            height: 16px;
            fill: none;
            stroke: currentColor;
            stroke-width: 2.2;
            stroke-linecap: round;
            stroke-linejoin: round;
            stroke-dasharray: 18;
            stroke-dashoffset: 18;
            animation: toast-draw .4s ease .2s forwards;
        }
        .toast-time {
            position: absolute;
            left: 0;
            right: 0;
            bottom: 0;
            height: 3px;
            background: var(--gold);
            transform-origin: left center;
            animation: toast-time 1.8s linear forwards;
        }
        .toast[data-toast-ms="4200"] .toast-time { animation-duration: 4.2s; }
        button.toast-close {
            margin-left: auto;
            width: 28px;
            height: 28px;
            padding: 0;
            border: 0;
            border-radius: 50%;
            background: transparent;
            color: var(--muted);
            font-size: 18px;
            line-height: 1;
        }
        button.toast-close:hover { background: var(--gold-soft); color: var(--ink); }
        .toast.is-leaving { animation: toast-out .28s cubic-bezier(.4, 0, 1, 1) forwards; }
        @keyframes toast-in {
            from { opacity: 0; transform: translateX(40px) scale(.98); }
            to { opacity: 1; transform: none; }
        }
        @keyframes toast-out {
            to { opacity: 0; transform: translateX(32px); }
        }
        @keyframes toast-pop {
            from { transform: scale(.4); }
            to { transform: scale(1); }
        }
        @keyframes toast-draw { to { stroke-dashoffset: 0; } }
        @keyframes toast-time {
            from { transform: scaleX(1); }
            to { transform: scaleX(0); }
        }
        .role-strip { display: grid; grid-template-columns: repeat(2, minmax(0, 1fr)); gap: 16px; margin-bottom: 18px; }
        .role-card { display: grid; gap: 8px; align-content: start; }
        .role-card p { margin: 0; color: var(--muted); }
        .role-card .pill { justify-self: start; }
        .users-wrap { overflow-x: auto; padding: 8px 18px; }
        .users { width: 100%; border-collapse: collapse; }
        .users th, .users td { text-align: left; padding: 14px 8px; border-bottom: 1px solid var(--line); vertical-align: middle; }
        .users tbody tr:last-child td { border-bottom: 0; }
        .users th { font-size: 12px; letter-spacing: .08em; text-transform: uppercase; color: var(--muted); }
        .user-cell { display: flex; align-items: center; gap: 12px; }
        .user-face {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            object-fit: cover;
            flex: none;
            background: #1c1a17;
            color: #f3eadc;
            overflow: hidden;
            font-family: "Libre Baskerville", Georgia, serif;
            font-size: 18px;
        }
        img.user-face { display: block; }
        span.user-face { display: grid; place-items: center; }
        .user-cell strong { font-size: 15px; }
        .user-cell .mail { display: block; margin-top: 2px; color: var(--muted); font-size: 13px; }
        .you {
            margin-left: 8px;
            padding: 2px 8px;
            border-radius: 999px;
            background: var(--gold-soft);
            color: var(--gold);
            font-size: 11px;
            font-weight: 700;
            letter-spacing: .06em;
            text-transform: uppercase;
            vertical-align: 1px;
        }
        .pill-user { background: #f3f1ec; color: var(--ink); }
        .row-actions { display: flex; gap: 8px; justify-content: flex-end; }
        .row-actions a.btn-quiet, .row-actions button.btn-danger { padding: 7px 14px; border-radius: 999px; font-size: 13px; }
        .role-notes { margin: 0; padding-left: 18px; color: var(--muted); font-size: 13px; display: grid; gap: 6px; }
        .role-notes strong { color: var(--ink); }
        main { width: min(1180px, 92vw); margin: 32px auto 72px; }
        .page-head {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            gap: 16px;
            margin-bottom: 18px;
        }
        .page-head h1 {
            margin: 0;
            font-family: "Libre Baskerville", Georgia, serif;
            font-size: 34px;
            font-weight: 400;
        }
        .page-head p { margin: 6px 0 0; color: var(--muted); }
        .page-head .btn {
            align-self: center;
            padding: 10px 20px;
            border-radius: 999px;
            background: #12110f;
            color: #f7f3ec;
            white-space: nowrap;
        }
        .page-head .btn:hover { background: #2a261f; color: #fff; }
        .panel {
            background: var(--card);
            border: 1px solid var(--line);
            border-radius: 18px;
            box-shadow: var(--shadow);
            padding: 18px;
        }
        .toolbar, .filters {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            align-items: center;
        }
        .filters { margin-bottom: 18px; }
        input, select, textarea, button {
            font: 15px Manrope, "Segoe UI", sans-serif;
            border: 1px solid var(--line);
            background: #fff;
            color: var(--ink);
            border-radius: 12px;
            padding: 12px 14px;
        }
        input:focus, select:focus, textarea:focus {
            outline: 2px solid #e6d3ae;
            border-color: var(--gold);
        }
        button, .btn {
            background: #12110f;
            color: #fff;
            border: 0;
            cursor: pointer;
            text-decoration: none;
            font-weight: 700;
            display: inline-flex;
            align-items: center;
            justify-content: center;
        }
        button:hover, .btn:hover { background: #2a261f; }
        a.btn-quiet, button.btn-danger {
            background: #fff;
            font-weight: 700;
        }
        a.btn-quiet { color: var(--ink); border: 1px solid var(--line); }
        a.btn-quiet:hover { background: #f6f1ea; }
        button.btn-danger { color: var(--sale); border: 1px solid #f0d2d2; }
        button.btn-danger:hover { background: #fdecec; }
        .auth-card form { display: grid; gap: 14px; }
        .password-field { position: relative; }
        .password-field input { width: 100%; padding-right: 72px; }
        button.show-password {
            position: absolute;
            top: 50%;
            right: 6px;
            transform: translateY(-50%);
            background: transparent;
            color: var(--gold);
            border: 0;
            padding: 4px 8px;
            font-size: 13px;
        }
        button.show-password:hover { background: transparent; color: var(--ink); }
        .auth-card button[type="submit"] { border-radius: 999px; }
        .social-login { display: grid; gap: 10px; margin-top: 4px; }
        .social-row { display: flex; justify-content: center; gap: 8px; }
        a.social-btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            width: 178px;
            height: 44px;
            padding: 0 14px;
            border-radius: 999px;
            background: #fff;
            color: var(--ink);
            border: 1px solid #ddd6cb;
            box-shadow: 0 1px 0 rgba(26, 24, 20, .04);
            text-decoration: none;
            font-size: 12px;
            font-weight: 700;
        }
        a.social-btn:hover { background: #f6f1ea; }
        a.social-btn.github {
            background: #12110f;
            color: #f7f3ec;
            border-color: #12110f;
        }
        a.social-btn.github:hover { background: #2a261f; }
        a.social-btn svg { display: block; width: 18px; height: 18px; flex: none; }
        .or {
            display: grid;
            grid-template-columns: 1fr auto 1fr;
            gap: 10px;
            align-items: center;
            color: var(--muted);
            font-size: 13px;
            margin: 0;
        }
        .or::before, .or::after { content: ""; height: 1px; background: var(--line); }
        .auth-switch { margin: 0; font-size: 14px; color: var(--muted); }
        .auth-switch a { color: var(--gold); font-weight: 700; text-decoration: none; }
        .meta { color: var(--muted); font-size: 14px; margin: 0 0 16px; }
        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(240px, 1fr));
            gap: 18px;
        }
        .card {
            background: var(--card);
            border: 1px solid var(--line);
            border-radius: 18px;
            overflow: hidden;
            text-decoration: none;
            display: flex;
            flex-direction: column;
            min-height: 100%;
            box-shadow: var(--shadow);
            transition: transform .18s ease, box-shadow .18s ease;
        }
        .card:hover { transform: translateY(-3px); box-shadow: 0 16px 34px rgba(26, 24, 20, .1); }
        .card img, .frame {
            width: 100%;
            aspect-ratio: 1;
            object-fit: cover;
            background: #efeae3;
            display: block;
        }
        .card .info { padding: 14px 16px 16px; }
        .eyebrow {
            margin: 0 0 6px;
            color: var(--gold);
            font-size: 11px;
            font-weight: 700;
            letter-spacing: .08em;
            text-transform: uppercase;
        }
        .card h2, .detail h2 { margin: 0; font-size: 18px; font-weight: 700; line-height: 1.3; }
        .catalog-grid { grid-template-columns: 1fr; }
        .catalog-grid .site-card {
            position: relative;
            overflow: visible;
            min-height: 168px;
        }
        .catalog-grid .site-link {
            display: grid;
            grid-template-columns: 220px minmax(0, 1fr);
            min-height: 168px;
            text-decoration: none;
            color: inherit;
        }
        .catalog-grid .options { position: absolute; top: 16px; right: 16px; }
        .catalog-grid .cover, .catalog-grid .mark {
            width: 100%;
            height: 100%;
            min-height: 168px;
            object-fit: cover;
            background: #1c1a17;
        }
        .catalog-grid .mark {
            display: grid;
            place-items: center;
            color: #f3eadc;
            font-family: "Libre Baskerville", Georgia, serif;
            font-size: 42px;
        }
        .catalog-grid .info {
            padding: 22px 28px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            gap: 8px;
        }
        .catalog-grid h2 {
            font-family: "Libre Baskerville", Georgia, serif;
            font-size: 32px;
            font-weight: 400;
            overflow-wrap: anywhere;
        }
        .catalog-grid .stats { margin: 0; color: var(--muted); font-size: 14px; }
        .catalog-grid .open { margin: 8px 0 0; color: var(--gold); font-size: 13px; font-weight: 700; }
        .category-label {
            margin: 22px 0 10px;
            font-size: 13px;
            letter-spacing: .08em;
            text-transform: uppercase;
            color: var(--muted);
        }
        .category-picker {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(210px, 1fr));
            gap: 14px;
            margin-bottom: 28px;
        }
        .category-tile { position: relative; overflow: hidden; }
        .category-tile:hover { transform: none; }
        .category-tile.selected { outline: 2px solid var(--gold); }
        .category-tile > a {
            display: block;
            position: relative;
            color: #fff;
            text-decoration: none;
        }
        .category-tile .info {
            position: absolute;
            inset: 0;
            display: flex;
            flex-direction: column;
            justify-content: flex-end;
            padding: 16px;
            background: linear-gradient(transparent, rgba(18, 17, 15, .78));
            opacity: 0;
            transition: opacity .18s ease;
        }
        .category-tile:hover .info,
        .category-tile:focus-within .info,
        .category-tile.selected .info { opacity: 1; }
        .category-tile h2 { margin: 0; color: #fff; font-family: "Libre Baskerville", Georgia, serif; font-size: 22px; font-weight: 400; }
        .category-tile .eyebrow { color: #f3eadc; }
        .category-tile .count { margin: 4px 0 0; color: #f3eadc; font-size: 13px; }
        .category-tile .pill { margin-top: 8px; align-self: flex-start; }
        .category-tile form, .category-tile .rescrape-link {
            position: absolute;
            top: 12px;
            right: 12px;
            z-index: 2;
            margin: 0;
            opacity: 0;
            transition: opacity .18s ease;
        }
        .category-tile:hover form,
        .category-tile:focus-within form,
        .category-tile:hover .rescrape-link,
        .category-tile:focus-within .rescrape-link { opacity: 1; }
        .category-tile button, .rescrape-link {
            border-radius: 999px;
            padding: 8px 14px;
            font-size: 13px;
            white-space: nowrap;
        }
        .product-heading { margin: 8px 0 14px; font-family: "Libre Baskerville", Georgia, serif; font-size: 28px; font-weight: 400; }
        .all-mark {
            display: grid;
            place-items: center;
            color: var(--gold);
            font-family: "Libre Baskerville", Georgia, serif;
            font-size: 32px;
        }
        .head-actions { display: flex; align-items: center; gap: 12px; }
        .head-actions .meta { margin: 0; }
        .options { position: relative; }
        .options summary {
            list-style: none;
            cursor: pointer;
            border: 1px solid var(--line);
            background: #fff;
            color: var(--ink);
            border-radius: 999px;
            padding: 8px 14px;
            font-size: 13px;
            font-weight: 700;
        }
        .options summary::-webkit-details-marker { display: none; }
        .options-panel {
            position: absolute;
            right: 0;
            top: calc(100% + 8px);
            z-index: 5;
            min-width: 170px;
            background: #fff;
            border: 1px solid var(--line);
            border-radius: 14px;
            box-shadow: var(--shadow);
            padding: 6px;
            display: grid;
        }
        .options-panel a, .options-panel button {
            display: flex;
            justify-content: flex-start;
            text-align: left;
            background: transparent;
            color: var(--ink);
            border: 0;
            border-radius: 10px;
            padding: 10px 12px;
            font-size: 14px;
            font-weight: 600;
            text-decoration: none;
            width: 100%;
        }
        .options-panel a:hover, .options-panel button:hover { background: #f6f1ea; }
        .options-panel button { color: var(--sale); }
        .product-card { position: relative; }
        .product-card > a {
            display: flex;
            flex-direction: column;
            text-decoration: none;
            color: inherit;
            min-height: 100%;
        }
        .card-delete { position: absolute; top: 10px; right: 10px; margin: 0; }
        .card-delete button, .product-delete button {
            background: #fff;
            color: var(--sale);
            border: 1px solid var(--line);
            border-radius: 999px;
            padding: 6px 10px;
            font-size: 12px;
        }
        .card-delete button:hover, .product-delete button:hover { background: #fdecec; }
        .product-delete { margin-top: 18px; }
        .price { margin: 10px 0 0; font-weight: 700; }
        .price s { color: var(--muted); margin-right: 8px; font-weight: 500; }
        .price strong { color: var(--sale); }
        .pager { margin-top: 26px; }
        .pager nav { justify-content: center; }
        .pager a, .pager span {
            text-decoration: none;
            border: 1px solid var(--line);
            background: var(--card);
            border-radius: 12px;
            padding: 10px 14px;
        }
        .product {
            display: grid;
            grid-template-columns: minmax(0, 1.15fr) minmax(300px, .85fr);
            gap: 22px;
            align-items: start;
        }
        .gallery { display: grid; gap: 10px; }
        .hero-frame { position: relative; }
        .hero-stage {
            overflow: hidden;
            border-radius: 16px;
            background: #fff;
            touch-action: none;
        }
        .hero-stage.is-zoomed { cursor: grab; }
        .hero-stage.is-dragging { cursor: grabbing; }
        .gallery .hero {
            width: 100%;
            aspect-ratio: 1.05;
            object-fit: contain;
            background: #fff;
            transform-origin: center center;
            transition: transform .18s ease;
            pointer-events: none;
            user-select: none;
            -webkit-user-drag: none;
        }
        .hero-stage.is-dragging .hero { transition: none; }
        .zoom-controls {
            position: absolute;
            top: 14px;
            right: 14px;
            z-index: 1;
            display: grid;
            gap: 8px;
        }
        button.gallery-zoom {
            width: 40px;
            height: 40px;
            margin: 0;
            padding: 0;
            border: 0;
            border-radius: 50%;
            background: rgba(18, 17, 15, .78);
            color: #fff;
        }
        button.gallery-zoom:hover { background: var(--gold); }
        button.gallery-zoom:disabled,
        button.gallery-zoom:disabled:hover { background: rgba(18, 17, 15, .35); cursor: default; }
        .gallery-zoom svg {
            width: 18px;
            height: 18px;
            fill: none;
            stroke: currentColor;
            stroke-width: 2;
            stroke-linecap: round;
        }
        button.gallery-arrow {
            position: absolute;
            top: 50%;
            z-index: 1;
            width: 44px;
            height: 44px;
            margin: 0;
            padding: 0;
            border: 0;
            border-radius: 50%;
            background: rgba(18, 17, 15, .78);
            color: #fff;
            transform: translateY(-50%);
        }
        button.gallery-arrow:hover { background: var(--gold); }
        .gallery-prev { left: 14px; }
        .gallery-next { right: 14px; }
        .gallery-arrow svg {
            width: 22px;
            height: 22px;
            fill: none;
            stroke: currentColor;
            stroke-width: 2;
            stroke-linecap: round;
            stroke-linejoin: round;
        }
        .thumbs { display: grid; grid-template-columns: repeat(5, 1fr); gap: 8px; }
        button.thumb {
            margin: 0;
            padding: 0;
            border: 2px solid transparent;
            border-radius: 12px;
            background: #fff;
            overflow: hidden;
        }
        button.thumb:hover { background: #fff; }
        button.thumb.is-selected { border-color: var(--gold); }
        .thumbs img { width: 100%; aspect-ratio: 1; object-fit: cover; border-radius: 10px; background: #efeae3; display: block; pointer-events: none; user-select: none; -webkit-user-drag: none; }
        .detail h2 { font-family: "Libre Baskerville", Georgia, serif; font-size: 32px; font-weight: 400; }
        .back { margin: 0 0 18px; }
        .back a {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            text-decoration: none;
            background: #fff;
            color: var(--ink);
            border: 1px solid var(--line);
            border-radius: 999px;
            padding: 10px 16px;
            font-size: 14px;
            font-weight: 700;
            box-shadow: var(--shadow);
        }
        .back a::before { content: "<"; }
        .back a:hover { border-color: var(--gold); color: var(--gold); }
        .copy { white-space: pre-wrap; line-height: 1.6; color: #3c3832; }
        .label {
            font-size: 11px;
            font-weight: 700;
            letter-spacing: .08em;
            text-transform: uppercase;
            color: var(--gold);
            margin: 18px 0 6px;
        }
        .link-box {
            display: block;
            padding: 12px 14px;
            border-radius: 12px;
            background: var(--gold-soft);
            text-decoration: none;
            word-break: break-all;
            font-size: 14px;
        }
        .scrape { display: grid; gap: 14px; }
        .field { display: grid; gap: 6px; }
        .field label { font-size: 13px; font-weight: 700; }
        .field small, .hint { color: var(--muted); font-size: 13px; line-height: 1.5; }
        .scrape input, .scrape textarea { width: 100%; }
        .scrape textarea { resize: vertical; min-height: 140px; }
        .error { margin: 0; color: var(--sale); font-size: 14px; }
        .layout-2 { display: grid; grid-template-columns: minmax(0, 1.3fr) minmax(260px, .7fr); gap: 18px; align-items: start; }
        .note h2 { margin: 0 0 8px; font-size: 18px; }
        .note ol { margin: 0; padding-left: 18px; color: var(--muted); line-height: 1.6; }
        .runs { list-style: none; padding: 0; margin: 18px 0 0; display: grid; gap: 10px; }
        .runs li {
            display: flex;
            justify-content: space-between;
            gap: 12px;
            align-items: center;
            padding: 14px 16px;
            border: 1px solid var(--line);
            border-radius: 14px;
            background: var(--card);
        }
        .runs a {
            display: block;
            flex: 1;
            min-width: 0;
            text-decoration: none;
        }
        .runs strong { display: block; }
        .runs a span { color: var(--muted); font-size: 13px; word-break: break-all; }
        .pill {
            border-radius: 999px;
            padding: 4px 10px;
            font-size: 12px;
            font-weight: 700;
            text-transform: capitalize;
            background: var(--gold-soft);
            color: var(--gold);
        }
        .pill-completed { background: #e7f6ec; color: var(--ok); }
        .pill-failed { background: #fdecec; color: var(--sale); }
        .pill-stopped { background: #f3f1ec; color: var(--muted); }
        .loader {
            box-sizing: border-box;
            width: 28px;
            height: 28px;
            display: block;
            border-radius: 50%;
            border: 3px dotted var(--gold);
            border-bottom-color: transparent;
            animation: spin .8s linear infinite;
        }
        .stop { position: relative; width: 28px; height: 28px; flex: none; }
        .stop .loader { position: absolute; inset: 0; }
        .stop button {
            position: absolute;
            inset: 0;
            width: 28px;
            height: 28px;
            margin: 0;
            padding: 0;
            border: 0;
            border-radius: 50%;
            background: #1c1915;
            color: #fff;
            cursor: pointer;
            opacity: 0;
        }
        .stop button i {
            display: block;
            width: 8px;
            height: 8px;
            margin: 10px auto;
            background: currentColor;
            border-radius: 1px;
        }
        .stop:hover button, .stop:focus-within button { opacity: 1; }
        .stop:hover .loader, .stop:focus-within .loader { visibility: hidden; }
        .restart button { opacity: 1; }
        .restart button svg {
            display: block;
            width: 14px;
            height: 14px;
            margin: 7px auto;
            fill: none;
            stroke: currentColor;
            stroke-width: 1.8;
            stroke-linecap: round;
            stroke-linejoin: round;
        }
        @keyframes spin { to { transform: rotate(360deg); } }
        .stat { font-family: "Libre Baskerville", Georgia, serif; font-size: 42px; margin: 0; }
        @media (max-width: 800px) {
            header { align-items: flex-start; flex-direction: column; }
            .page-head, .product, .layout-2 { grid-template-columns: 1fr; display: grid; }
            .page-head { display: block; }
            .page-head .btn { margin-top: 14px; }
            .thumbs { grid-template-columns: repeat(4, 1fr); }
            .filters input, .filters select, .filters button { width: 100%; }
            .catalog-grid .site-card, .catalog-grid .site-link { grid-template-columns: 1fr; }
            .catalog-grid .cover, .catalog-grid .mark { min-height: 160px; height: 160px; }
            .profile-board, .role-strip, .plan-grid, .pay-board, .pay-row { grid-template-columns: 1fr; }
            .plan-scale { grid-template-columns: 1fr 1fr; }
            .plan-ledger > div { grid-template-columns: 1fr; gap: 6px; }
            .notify-sent article { align-items: flex-start; flex-direction: column; }
            .users thead { display: none; }
            .users, .users tbody { display: block; }
            .users tr {
                display: grid;
                grid-template-columns: 1fr auto;
                gap: 10px;
                align-items: center;
                padding: 14px 0;
                border-bottom: 1px solid var(--line);
            }
            .users tbody tr:last-child { border-bottom: 0; }
            .users td { display: block; border: 0; padding: 0; }
            .users td:first-child { grid-column: 1 / -1; }
        }
    </style>
</head>
<body>
    <header>
        <a class="brand" href="{{ route('sites.index') }}">
            <img src="{{ asset('brand/catalogs-mark.png') }}?v=3" alt="">
            <span class="brand-name">
                <span>Product</span>
                <strong>Catalog</strong>
            </span>
        </a>
        @auth
            <nav>
                @can('catalogs.view')
                    <a href="{{ route('sites.index') }}" @class(['active' => request()->routeIs('sites.*', 'products.*')])>Catalogs</a>
                @endcan
                @can('scrape.run')
                    <a href="{{ route('scrape.create') }}" @class(['active' => request()->routeIs('scrape.*')])>Scrape</a>
                @endcan
                <details class="notices">
                    <summary aria-label="Notifications">
                        <svg viewBox="0 0 24 24" aria-hidden="true"><path d="M6 9a6 6 0 1 1 12 0c0 7 3 7 3 9H3c0-2 3-2 3-9"/><path d="M10 20a2 2 0 0 0 4 0"/></svg>
                        @if (($unreadNotices ?? 0) > 0)
                            <span class="notice-count">{{ $unreadNotices > 9 ? '9+' : $unreadNotices }}</span>
                        @endif
                    </summary>
                    <div class="notice-menu">
                        <div class="notice-head">
                            <strong>Notifications</strong>
                            <form method="post" action="{{ route('notices.clear') }}" @if (($accountNotices ?? collect())->isEmpty()) hidden @endif>
                                @csrf
                                <button class="notice-clear" type="submit">Clear all</button>
                            </form>
                        </div>
                        <div class="notice-list">
                            @forelse ($accountNotices ?? [] as $notice)
                                <form method="post" action="{{ route('notices.read', $notice) }}">
                                    @csrf
                                    <button type="submit" @class(['is-read' => $notice->read_at])>
                                        <strong>{{ $notice->title }}</strong>
                                        <span>{{ $notice->body }}</span>
                                    </button>
                                </form>
                            @empty
                                <p class="notice-empty">No notifications yet.</p>
                            @endforelse
                        </div>
                    </div>
                </details>
                <details class="account">
                    <summary>
                        @include('account.face')
                        {{ auth()->user()->name }}
                    </summary>
                    <div class="account-menu">
                        <div class="account-person">
                            @include('account.face')
                            <div>
                                <strong>{{ auth()->user()->name }}</strong>
                                <span>{{ auth()->user()->email }}</span>
                            </div>
                        </div>
                        <a href="{{ route('profile') }}" @class(['active' => request()->routeIs('profile')])>Profile</a>
                        <a href="{{ route('subscription') }}" @class(['active' => request()->routeIs('subscription')])>Subscription</a>
                        @can('users.manage')
                            <a href="{{ route('notify') }}" @class(['active' => request()->routeIs('notify')])>Notify</a>
                            <a href="{{ route('users.index') }}" @class(['active' => request()->routeIs('users.*')])>Users</a>
                        @endcan
                        <form method="post" action="{{ route('logout') }}">
                            @csrf
                            <button class="menu-logout" type="submit">Log out</button>
                        </form>
                    </div>
                </details>
            </nav>
        @endauth
    </header>
    <div class="toast-stack">
        @if (session('status'))
            <div class="toast" role="status">
                <span class="toast-mark" aria-hidden="true">
                    <svg viewBox="0 0 16 16"><path d="M3 8.2 6.2 11.4 13 4.6"/></svg>
                </span>
                <p>{{ session('status') }}</p>
                <button class="toast-close" type="button" aria-label="Dismiss">×</button>
                <span class="toast-time"></span>
            </div>
        @endif
        @foreach ($freshNotices ?? [] as $notice)
            <div class="toast toast-notice" data-toast-ms="4200" data-notice-id="notice-{{ $notice->id }}" role="status">
                <span class="toast-mark" aria-hidden="true">
                    <svg viewBox="0 0 16 16"><path d="M3 8.2 6.2 11.4 13 4.6"/></svg>
                </span>
                <div>
                    <p>{{ $notice->title }}</p>
                    <span class="toast-body">{{ $notice->body }}</span>
                </div>
                <button class="toast-close" type="button" aria-label="Dismiss">×</button>
                <span class="toast-time"></span>
            </div>
        @endforeach
    </div>
    <main>
        @yield('content')
    </main>
    <script>
        document.addEventListener('click', (event) => {
            const button = event.target.closest('[data-show-password]');
            if (button) {
                const input = document.getElementById(button.dataset.showPassword);
                const showing = input.type === 'text';
                input.type = showing ? 'password' : 'text';
                button.textContent = showing ? 'Show' : 'Hide';
            }

            document.querySelectorAll('.account[open], .notices[open]').forEach((menu) => {
                if (!menu.contains(event.target)) menu.removeAttribute('open');
            });
        });

        const bindToast = (toast) => {
            const close = () => {
                if (toast.classList.contains('is-leaving')) return;
                toast.classList.add('is-leaving');
                toast.addEventListener('animationend', (event) => {
                    if (event.target === toast) toast.remove();
                });
            };
            toast.querySelector('.toast-close')?.addEventListener('click', close);
            setTimeout(close, Number(toast.dataset.toastMs || 1800));
        };

        document.querySelectorAll('.toast').forEach(bindToast);

        const csrf = document.querySelector('meta[name="csrf-token"]')?.content;
        const bell = document.querySelector('.notices');

        const noticeForm = (item) => {
            const form = document.createElement('form');
            form.method = 'post';
            form.action = `/notices/${item.id}/read`;
            form.innerHTML = '<input type="hidden" name="_token"><button type="submit"><strong></strong><span></span></button>';
            form.querySelector('input').value = csrf;
            form.querySelector('strong').textContent = item.title;
            form.querySelector('span').textContent = item.body;
            if (item.read) form.querySelector('button').classList.add('is-read');
            return form;
        };

        const fillList = (items) => {
            const list = document.querySelector('.notice-list');
            if (!list) return;
            list.replaceChildren();
            syncClear(items.length);
            if (!items.length) {
                const empty = document.createElement('p');
                empty.className = 'notice-empty';
                empty.textContent = 'No notifications yet.';
                list.append(empty);
                return;
            }
            items.forEach((item) => list.append(noticeForm(item)));
        };

        const syncClear = (count) => {
            const form = document.querySelector('.notice-head form');
            if (form) form.hidden = count === 0;
        };

        const systemNotice = (title, body, tag) => {
            if (!title || !('Notification' in window) || Notification.permission !== 'granted') return;
            const note = new Notification(title, {
                body: body || '',
                icon: '{{ asset('brand/favicon.png') }}?v=4',
                tag: tag || title,
            });
            note.onclick = () => {
                window.focus();
                note.close();
            };
        };

        const showNotice = (item) => {
            const stack = document.querySelector('.toast-stack');
            if (!stack) return;
            const toast = document.createElement('div');
            toast.className = 'toast toast-notice';
            toast.dataset.toastMs = '4200';
            toast.setAttribute('role', 'status');
            toast.innerHTML = '<span class="toast-mark" aria-hidden="true"><svg viewBox="0 0 16 16"><path d="M3 8.2 6.2 11.4 13 4.6"/></svg></span><div><p></p><span class="toast-body"></span></div><button class="toast-close" type="button" aria-label="Dismiss">×</button><span class="toast-time"></span>';
            toast.querySelector('p').textContent = item.title;
            toast.querySelector('.toast-body').textContent = item.body;
            stack.append(toast);
            bindToast(toast);
            systemNotice(item.title, item.body, item.id ? `notice-${item.id}` : item.title);
        };

        document.querySelectorAll('.toast-notice').forEach((toast) => {
            systemNotice(toast.querySelector('p')?.textContent, toast.querySelector('.toast-body')?.textContent, toast.dataset.noticeId);
        });

        const paintCount = (unread) => {
            const summary = bell?.querySelector('summary');
            if (!summary) return;
            let count = summary.querySelector('.notice-count');
            if (unread > 0) {
                if (!count) {
                    count = document.createElement('span');
                    count.className = 'notice-count';
                    summary.append(count);
                }
                count.textContent = unread > 9 ? '9+' : String(unread);
            } else {
                count?.remove();
            }
        };

        const pollNotices = async () => {
            if (!bell) return;
            const response = await fetch('/notices', { headers: { Accept: 'application/json' } });
            if (!response.ok) return;
            const data = await response.json();
            paintCount(data.unread);
            if (Array.isArray(data.items)) fillList(data.items);
            if (data.on) data.fresh.forEach(showNotice);
        };

        document.querySelector('.notice-head form')?.addEventListener('submit', async (event) => {
            event.preventDefault();
            const response = await fetch(event.currentTarget.action, {
                method: 'POST',
                headers: { Accept: 'application/json', 'X-CSRF-TOKEN': csrf },
            });
            if (!response.ok) return;
            fillList([]);
            paintCount(0);
        });

        if (bell) setInterval(pollNotices, 8000);

        document.querySelector('[data-notifications]')?.addEventListener('change', async (event) => {
            const input = event.target;
            if (input.checked) {
                const permission = !('Notification' in window) ? 'denied' : (
                    Notification.permission === 'granted' ? 'granted' : await Notification.requestPermission()
                );
                if (permission !== 'granted') {
                    input.checked = false;
                }
            }
            const body = new FormData();
            body.append('_method', 'PUT');
            body.append('notifications', input.checked ? '1' : '0');
            const response = await fetch(input.dataset.notifications, {
                method: 'POST',
                headers: { Accept: 'application/json', 'X-CSRF-TOKEN': csrf },
                body,
            });
            if (!response.ok) {
                input.checked = !input.checked;
                return;
            }
            if (input.checked) {
                systemNotice('Notifications on', 'Scrape complete and catalog updates will show on this system.', 'notifications-on');
            }
            pollNotices();
        });
    </script>
</body>
</html>
