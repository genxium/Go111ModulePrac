# About `<proj-root>` 

You're reading `<proj-root>/README.md`.


# Installing the binary `go1.11rc1`

According to https://golang.org/dl/ by 2018-08-14. 
```
shell> go get golang.org/dl/go1.11rc1
shell> go1.11rc1 download
```


# How `<proj-root>/go.mod` was generated and updated at the very beginning

- The `<proj-root>/go.mod` file was automatically generated by 
```
proj-root> go1.11rc1 mod init mycompany.org/thisproj
```
- The `<proj-root>/go.mod` file was then automatically updated and the `<proj-root>/go.sum` file was automatically generated as well by 
```
proj-root> go1.11rc1 get github.com/kardianos/vtest
```


# Nomenclature in `go.mod` and its implication

- The `<proj-root>` here is defined as module `mycompany.org/thisproj` in `<proj-root>/go.mod`. 
  - You can use arbitrary module name, e.g. either a more cascaded one like "myproj" or a shorter one like "mycompany.org/genxium/2018/august/go111/moduleprac" instead of "mycompany.org/thisproj". Such change will require corresponding updates for the `import` statement in `<proj-root>/main.go`.    
- The package `<proj-root>/arithmetic` is thus imported as `mycompany.org/thisproj/arithmetic` in `<proj-root>/main.go`.


# Building & running
```
proj-root> go1.11rc1 build main.go
proj-root> ./main
```


# Reference 

- In general about `go-modules` [here](https://github.com/golang/go/wiki/Modules).
  - Specifically about the module file `go.mod` [here](https://github.com/golang/go/wiki/Modules#gomod).
  - Specifically about the use of command `go get` for `go-modules` [here](https://github.com/golang/go/wiki/Modules#how-to-upgrade-and-downgrade-dependencies).
- Specifically about `go1.11-modules` [here](https://tip.golang.org/doc/go1.11#modules).
