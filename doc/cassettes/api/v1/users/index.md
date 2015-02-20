---
layout: default
title: /api/v1/users/index
---

## Request

~~~
GET /v1/users
~~~

## Response

~~~
200 OK 

[
  {
    "id": 1,
    "state": "active",
    "name": "Admin",
    "description": null,
    "email": null,
    "username": "root",
    "roles": [
      "admin"
    ],
    "url": "http://localhost:3000/v1/users/1"
  }
]
~~~
