---
layout: default
title: /api/v1/users/create
---

## Request

~~~
POST /v1/users
~~~

## Response

~~~
201 Created 

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
