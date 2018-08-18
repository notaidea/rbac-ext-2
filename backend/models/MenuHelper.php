<?php
namespace backend\models;

use Yii;
use yii\helpers\Html;
use backend\models\Menu;

class MenuHelper extends Menu
{
    public static function getMenu()
    {
        $menuItems = [];
        $menus = static::find()->all();
        $topMenus = [];
        $subMenus = [];

        foreach ($menus as $k => $v) {
            if ($v->parent == null) {
                $topMenus[] = $v;
            } else {
                $subMenus[] = $v;
            }
        }

        foreach ($topMenus as $k => $v) {
            $row = [];
            $menuItems[$k] = static::format($v);

            foreach ($subMenus as $k2 => $v2) {

                if ($v->id == $v2->parent) {
                    $row["label"] = $v->name;
                    $row["items"][] = static::format($v2);
                    $menuItems[$k] = $row;
                }
            }
        }

        return $menuItems;
    }

    public static function format($menus)
    {
        $row["label"] = $menus->name;
        $route = isset($menus->route) ? $menus->route : "";
        $row["url"] = [$route];
        //$row["url"] = [Yii::$app->urlManager->createUrl($route)];
        return $row;
    }

    public static function format2($menus)
    {
        $data = [];

        foreach ($menus as $k => $v) {
            $row = [];
            $row["label"] = $v->name;
            $row["url"] = Yii::$app->urlManager->createUrl($v->route);

            $data[] = $row;
        }

        return $data;
    }

    public static function getMenu2()
    {
        $menuItems = [
            ['label' => 'Home', 'url' => ['/site/index']],
            [
                'label' => 'test',
                'items' => [
                    ['label' => 'test1', 'url' => ['/site/test1']],
                    ['label' => 'test2', 'url' => ['/site/test2']],
                    ['label' => 'test3', 'url' => ['/site/test3']],
                ]
            ],
        ];

        if (Yii::$app->user->isGuest) {
            $menuItems[] = ['label' => 'Login', 'url' => ['/site/login']];
        } else {
            $menuItems[] = '<li>'
                . Html::beginForm(['/site/logout'], 'post')
                . Html::submitButton(
                    'Logout (' . Yii::$app->user->identity->username . ')',
                    ['class' => 'btn btn-link']
                )
                . Html::endForm()
                . '</li>';
        }

        return $menuItems;
    }
}