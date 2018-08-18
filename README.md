# About `<proj-root>` 

You're reading `<proj-root>/README.md`.


# Installing the binary `go` at version `1.11rc1`

Download the tarball `go1.11rc1.<os>-<arch>.tar.gz`, e.g. `go1.11rc1.linux-amd64.tar.gz`, from https://golang.org/dl/ (if not acceesible for you, try [this mirror page](https://mirrors.ustc.edu.cn/golang/) instead) with prebuilt `go` binary included, then untar it to `$HOME(bash-shell)/$env:USERPROFILE(powershell)` and configure the environment-variables `$GOROOT`, `$PATH` and `$GOPATH` appropriately, e.g. 

```
# The path of this file is usually "$HOME/.bash_profile".

export GOROOT=$HOME/go1.11rc1.linux-amd64/go
export PATH=$PATH:$GOROOT/bin

export GOPATH=$HOME/go # Use "mkdir -p" to create if it doesn't exist yet.
```

for a bash-shell or

```
# The path of this file is "$PROFILE".

$env:GOROOT="$env:USERPROFILE\go1.11rc1.windows-amd64\go"
$env:PATH="$env:PATH;$env:GOROOT\bin"

$env:GOPATH="$env:USERPROFILE\go" # Use "mkdir -p" to create if it doesn't exist yet.
```

for a powershell. 


# Getting started with the offline guides

## Interactive guide `A Tour of Go`
```
shell> go tool tour
```

## Detailed documentation 
```
shell> godoc -http=:6060
```
Visit http://localhost:6060 and wander around.

If you're using *Windows*, please make sure that `godoc` is launched from powershell or the old command-prompt. 


# How `<proj-root>/go.mod` was generated and updated at the very beginning

- The `<proj-root>/go.mod` file was automatically generated by 
```
proj-root> go mod init mycompany.org/thisproj
```
- The `<proj-root>/go.mod` file was then automatically updated and the `<proj-root>/go.sum` file was automatically generated as well by 
```
proj-root> go get github.com/kardianos/vtest
```


# Nomenclature in `go.mod` and its implication

- The `<proj-root>` here is defined as module `mycompany.org/thisproj` in `<proj-root>/go.mod`. 
  - You can use arbitrary module name, e.g. either a more cascaded one like "myproj" or a shorter one like "mycompany.org/genxium/2018/august/go111/moduleprac" instead of "mycompany.org/thisproj". Such change will require corresponding updates for the `import` statement in `<proj-root>/main.go`.    
- The package `<proj-root>/arithmetic` is thus imported as `mycompany.org/thisproj/arithmetic` in `<proj-root>/main.go`.


# Building & running
```
proj-root> go build main.go
proj-root> ./main
```


# Reference 

- In general about `go-modules` [here](https://github.com/golang/go/wiki/Modules).
  - Specifically about the module file `go.mod` [here](https://github.com/golang/go/wiki/Modules#gomod).
  - Specifically about the use of command `go get` for `go-modules` [here](https://github.com/golang/go/wiki/Modules#how-to-upgrade-and-downgrade-dependencies).
- Specifically about `go1.11-modules` [here](https://tip.golang.org/doc/go1.11#modules).
