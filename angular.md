# Angular: Essential Commands

## Angular CLI

### Installing

```shell
npm install -g @angular/cli
```

### Updating (all in one command)

```shell
npm uninstall -g @angular/cli cache clean;\
npm install -g @angular/cli@latest
```

## Generate a ...

### Component

```shell
ng g component my-component
```

```shell
ng g component my-component -c OnPush --standalone true
```

### Service

```shell
ng g service my-service
```

### Pipe

```shell
ng g pipe my-pipe
```

### Directive

```shell
ng g directive my-directive
```

### Enum

```shell
ng g enum my-enum
```

### Module

```shell
ng g module my-module
```

### Class

```shell
ng g class my-class
```

### Interface

```shell
ng g interface my-interface
```

### Guard

```shell
ng g guard my-guard
```

### Interceptor

```shell
ng g interceptor my-interceptor
```

## Serve

```shell
ng serve
```

## Testing

```shell
ng test
```

Retest when some files change:

```shell
ng test --watch
```

## Linting

```shell
ng lint
```

Apply fixes for linting errors:

```shell
ng lint --fix
```

## Environments

```shell
ng g environments
```

## Generate a new Angular app

### Using directly ESlint schematics & Prettier (in root)

1 - Generate an empty Angular workspace (in root):

```shell
ng new app --directory ./ --create-application false --defaults
```

2 - Install ESLint:

```shell
ng add @angular-eslint/schematics
```

3 - Generate a new Angular app in the workspace using ESLint:

```shell
ng generate @angular-eslint/schematics:application app --project-root --routing --style scss --defaults --strict
```

4 - Install Prettier locally:

```shell
npm install --save-dev --save-exact prettier
```

5 - Create an empty config file:

```shell
echo {} >.prettierrc.json
cp .gitignore .prettierignore
```

6 - Format all files with Prettier:

```shell
npx prettier --write .
```

7 - Builds and serves your application:

```shell
ng serve
```

All in one line (without `ng serve`):

```shell
ng new app --directory ./ --create-application false --defaults;\
ng add @angular-eslint/schematics;\
ng generate @angular-eslint/schematics:application app --project-root --routing --style scss --defaults --strict;\
npm install --save-dev --save-exact prettier;\
echo {} >.prettierrc.json;\
cp .gitignore .prettierignore;\
npx prettier --write .
```

## Resources

* https://angular.io/cli
* https://www.digitalocean.com/community/tutorials/angular-angular-cli-reference
* https://zeroesandones.medium.com/how-to-use-environment-variable-in-angular-16-29b5cbb6bd85
