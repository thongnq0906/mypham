<?php
/**
 * Created by PhpStorm.
 * User: Nguyen_Tien
 * Date: 3/22/2017
 * Time: 1:54 PM
 */

namespace App\Helpers;

use App\Category;

class Menu
{
    public static function getAll() {
        $list = Category::all();
        $result = self::getItem($list, 0);
        return $result;
    }

    public static function getItem ($list, $parentId) {
        $result = [];
        foreach ($list as $item) {
            if ($item->parent_id == $parentId) {
                $sub = [];
                $sub['id'] = $item->id;
                $sub['name'] = $item->name;
                $sub['items'] = null;
                $subItems = self::getItem($list, $item->id);
                if ($subItems != null) {
                    $sub['items'] = $subItems;
                }
                $result[] = $sub;
            }
        }

        return $result;
    }
}