<?php
namespace common\rules;

use Yii;
use yii\rbac\Rule;

class TestRule extends Rule
{
    public $name = "test";

    public function execute($user, $item, $params)
    {
        // TODO: Implement execute() method.
        //return true;
        return false;
    }
}