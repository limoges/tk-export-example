# Tanka Export --selector example

There seem to be a problem in how the selector is used in `tk export -l/--selector ...`.

## How-to Reproduce

With

```
$ tk --version
tk version v0.15.0
```

Run `make` to export with and without selectors.

## Explanation

We create the following resources using simple jsonnet:

```
apiVersion: apps/v1
kind: Deployment
metadata:
  labels:
    app: helloworld
  name: helloworld-deployment
  namespace: default
spec:
  selector:
    matchLabels:
      app: helloworld
  template:
    metadata:
      labels:
        app: helloworld
    spec:
      containers:
      - image: nginx:1.14.2
        name: helloworld
        ports:
        - containerPort: 80
```

Trying to use the `app=helloworld` selector yields no resource at all, but we expect the deployment to be there.
