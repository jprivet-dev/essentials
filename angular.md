# Angular

> Return to [README](README.md).

## NPM

```shell
npm install -g npm
```

## Angular CLI

### Global installing

```shell
npm install -g @angular/cli
```

### Global updating (all in one command)

```shell
npm uninstall -g @angular/cli cache clean
npm install -g @angular/cli@latest
ng version
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
. ./scripts/angular-my-app-generator.sh
```

### Extra

#### NbBootstrap (theme)

> https://ng-bootstrap.github.io/

```shell
ng add @ng-bootstrap/ng-bootstrap
```

#### Fontawesome (icons)

> https://github.com/FortAwesome/angular-fontawesome

```shell
ng add @fortawesome/angular-fontawesome
```

#### Transloco (i18n)

> https://ngneat.github.io/transloco/

```shell
ng add @ngneat/transloco
```

#### Elf (store)

> https://ngneat.github.io/elf/

```shell
npx @ngneat/elf-cli install
```

#### Moment (dates & times)

> https://momentjs.com/

```shell
npm install moment --save
```

```typescript
import * as moment from 'moment';
import 'moment/locale/pt-br';

console.log(moment.locale()); // en
moment.locale('fr');
console.log(moment.locale()); // fr
moment.locale('pt-br');
console.log(moment.locale()); // pt-br
```

## angular.json

### @schematics

```json
      "schematics": {
        "@schematics/angular:component": {
          "style": "scss",
          "standalone": true,
          "changeDetection": "OnPush"
        }
      }
```

## Resources

* https://angular.io/cli
* https://www.digitalocean.com/community/tutorials/angular-angular-cli-reference
* https://zeroesandones.medium.com/how-to-use-environment-variable-in-angular-16-29b5cbb6bd85

> Return to [README](README.md).
