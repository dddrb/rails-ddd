---
layout: default
title: /api/v1/users/show
---

## Request

~~~
GET /v1/users/1
~~~

## Response

~~~
200 OK 

{
  "id": 1,
  "state": "active",
  "name": "Admin",
  "description": null,
  "email": null,
  "username": "root",
  "roles": [
    "admin"
  ]
}
~~~
