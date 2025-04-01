# Rector

> ⬅️ [README](README.md)

# Configuration example

```php
<?php

declare(strict_types=1);

use Rector\Config\RectorConfig;

return RectorConfig::configure()
    ->withPaths([
        __DIR__.'/tests',
        __DIR__.'/src',
    ])
    ->withSymfonyContainerXml(
        __DIR__.'/var/cache/dev/App_KernelDevDebugContainer.xml'
    )
    ->withSets([
        \Rector\Set\ValueObject\LevelSetList::UP_TO_PHP_82,
    ])
    ->withPreparedSets(
        deadCode: false,            // [DISABLED] The proposed new code is not necessarily relevant
        codeQuality: true,
        codingStyle: false,         // [DISABLED] Sometimes conflicts with PHP CS Fixer
        typeDeclarations: true,
        privatization: true,
        naming: false,              // [DISABLED] Proposed variable renaming is not relevant from a business point of view
        instanceOf: true,
        earlyReturn: true,
        strictBooleans: false,      // [DISABLED] The proposed new code is not necessarily relevant
        carbon: false,              // [DISABLED] Not required
        rectorPreset: false,        // [DISABLED] Not required
        phpunitCodeQuality: true,
        doctrineCodeQuality: false, // [DISABLED] Not required
        symfonyCodeQuality: true,
        symfonyConfigs: false,      // [DISABLED] Not required
    )->withSkip([
        \Rector\CodeQuality\Rector\ClassMethod\LocallyCalledStaticMethodToNonStaticRector::class,
        \Rector\CodeQuality\Rector\Identical\FlipTypeControlToUseExclusiveTypeRector::class,
        \Rector\CodeQuality\Rector\If_\ExplicitBoolCompareRector::class,
        \Rector\CodeQuality\Rector\Empty_\SimplifyEmptyCheckOnEmptyArrayRector::class,
        \Rector\Strict\Rector\Empty_\DisallowedEmptyRuleFixerRector::class,
        \Rector\CodeQuality\Rector\FuncCall\ChangeArrayPushToArrayAssignRector::class,
        \Rector\CodeQuality\Rector\Class_\CompleteDynamicPropertiesRector::class,
        \Rector\CodeQuality\Rector\Catch_\ThrowWithPreviousExceptionRector::class,
        \Rector\TypeDeclaration\Rector\ClassMethod\ParamTypeByMethodCallTypeRector::class,
        \Rector\Privatization\Rector\MethodCall\PrivatizeLocalGetterToPropertyRector::class,
        \Rector\TypeDeclaration\Rector\BooleanAnd\BinaryOpNullableToInstanceofRector::class,
        \Rector\TypeDeclaration\Rector\Empty_\EmptyOnNullableObjectToInstanceOfRector::class,
        \Rector\EarlyReturn\Rector\Return_\ReturnBinaryOrToEarlyReturnRector::class,
        \Rector\Strict\Rector\If_\BooleanInIfConditionRuleFixerRector::class,
        \Rector\PHPUnit\CodeQuality\Rector\Class_\PreferPHPUnitThisCallRector::class,
        \Rector\PHPUnit\CodeQuality\Rector\Class_\NarrowUnusedSetUpDefinedPropertyRector::class,
        \Rector\Php81\Rector\FuncCall\NullToStrictStringFuncCallArgRector::class,
        \Rector\Php55\Rector\String_\StringClassNameToClassConstantRector::class,
    ])
    ->withImportNames(importShortClasses: false); // See https://getrector.com/documentation/import-names
```

> ⬅️ [README](README.md)