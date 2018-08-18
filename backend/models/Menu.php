<?php
namespace backend\models;

use Yii;
use yii\db\ActiveRecord;

class Menu extends ActiveRecord
{
    public static function tableName()
    {
        return "menu";
    }
}