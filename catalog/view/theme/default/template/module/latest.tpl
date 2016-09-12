<h3 style="display: block;height: 30px"><img src="image/catalog/tit.png"></h3>
<!--Tab:productList-->
<dl class="tab_proList">
    <dd>
        <?php foreach ($products as $product) { ?>
        <ul>
            <li>
                <a href="<?php echo $product['href']; ?>"" class="goodsPic">
                    <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>">
                </a>

                <div class="goodsInfor">
                    <h2>
                        <a href="<?php echo $product['href']; ?>""><?php echo $product['name']; ?></a>
                    </h2>
                    <?php if ($product['special']) { ?>
                    <p>
                        <del><?php echo $product['price']; ?></del>
                    </p>
                    <?php } ?>
                    <p>
                        <strong class="price"><?php echo $product['special'] ? $product['special'] : $product['price']; ?></strong>
                    </p>
                    <a class="addToCart">~</a>
                </div>
            </li>
        </ul>
        <?php } ?>
    </dd>
</dl>
