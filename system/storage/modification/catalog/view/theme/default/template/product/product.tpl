<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
		<div class="row">
		 <h1 style="margin-bottom:5px;margin-top:0px;" id="namesProduct" ><?php echo $heading_title; ?></h1>

<!-- * = * -->
<?php if(isset($seo_h2) && $seo_h2 && $seo_h2_position == 'after_h1'){ ?><h2><?php echo $seo_h2; ?></h2><?php } ?>
<?php if(isset($seo_h3) && $seo_h3 && $seo_h3_position == 'after_h1'){ ?><h3><?php echo $seo_h3; ?></h3><?php } ?>
<!-- * = * -->
				
		</div>
      <div class="row">
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-5'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } ?>
        
           <div class="<?php echo $class; ?>">
          <?php if ($thumb || $images) { ?>
          <ul class="thumbnails">
            <?php if ($thumb) { ?>
            <li><a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $title_image ? $title_image : $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $title_image ? $title_image : $heading_title; ?>" alt="<?php echo $alt_image ? $alt_image : $heading_title; ?>" /></a></li>
            <?php } ?>
            <?php if ($images) { ?>
              <?php foreach ($images as $image) { ?>
            <li class="image-additional"><a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $title_image ? $title_image : $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $title_image ? $title_image : $heading_title; ?>" alt="<?php echo $alt_image ? $alt_image : $heading_title; ?>" /></a></li>
            <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?>
					<!-- social -->
					
					
				

<div class="row">
            <?php if ($review_status) { ?>
        <div class="col-sm-5">
          <div class="rating">
            <p>
              <?php for ($i = 1; $i <= 5; $i++) { ?>
              <?php if ($rating < $i) { ?>
              <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } else { ?>
              <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } ?>
              <?php } ?>
              </p>
              </div> 
        </div>
<div class="col-sm-7">
    
    <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a> / <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a>
</div>
 </div>        
    <div class="row">      
            <div class="col-sm-12">
         
            <!-- AddThis Button BEGIN -->
            <div class="addthis_toolbox addthis_default_style"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
                       <script type="text/javascript" src="catalog/view/javascript/question.js"></script>
                                                        <script type="text/javascript" src="catalog/view/javascript/jquery.simplemodal.js"></script>
            <!-- AddThis Button END -->
           </div>
          </div>
					    <div class="row">  
          <div class="col-sm-12">
            <a href="#" class="contact-btnquestion buttonbl" style="float:left;width:100%;text-align: center;">
                
                 Задать вопрос о товаре
            </a> 
          </div>
					 </div>
          <?php } ?>
          
         
					
					
					
					<!-- social -->
 
					
     </div>
         <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-7'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } ?>
               <!-- правая сторона -->
          <div class="<?php echo $class; ?>">
       
         
          
         
                                  <!-- Атрибуты вывод -->
                                    <?php if ($attribute_groups) { ?>
                                 
                         <?php if ($attribute_groups) { ?>
                                    <div class="tab-pane" id="tab-specification">
                                      <table class="table table-bordered">
                                        <?php foreach ($attribute_groups as $attribute_group) { ?>
                                        <thead>
                                          <tr>
                                            <td colspan="2"><strong><?php echo $tab_attribute; ?></strong></td>
                                          </tr>
                                        </thead>
                                        <tbody>
                                          <?php
																					$sty='style="display:none"';
																					$numItems = count($attribute_group['attribute']);
																					$iii = 0;
																					$jd1 = 0;
																					$jd2 = 0;
																					$jd3 = 0;
																					foreach ($attribute_group['attribute'] as $attribute) { ?>
                                          <tr>
																				
																				
																				   
                                                
                                             
																				
																				
										
																					
																					<?php 	 if(++$jd1 === $numItems-3) { ?>
												<td id="1costforlist"><?php echo $attribute['name']; ?> <br /> <span id="atr1costforlist"> До <?php echo $discounts[0]['quantity'];  ?>				</span>	</td>
												<td id="costforlist1">		<?php echo $price;  ?>									</td>  	<?php ++$jd2;++$jd3;++$iii; continue; ?> 		
																					<?php	}  ?>
																					
																				<?php if(++$jd2 === $numItems-2) { ?>
																				<td id="2costforlist" <?php if(!$discounts[0]['quantity']) echo $sty;  ?>><?php echo $attribute['name']; ?>	 <br /> <span id="atr2costforlist">От <?php echo $discounts[0]['quantity'];  ?>	</span>	</td>
																				<td id="costforlist2" <?php if(!$discounts[0]['quantity']) echo $sty;  ?>>	<?php echo $discounts[0]['price'];  ?>		</td>  <?php ++$jd3;++$iii; continue; ?> 	
																					<?php	}  ?>	
																					
																			<?php if(++$jd3 === $numItems-1 ) { ?>
																					<td id="2costforlist" <?php if(!$discounts[1]['quantity']) echo $sty;  ?> >
																						<?php echo $attribute['name']; ?>	
																						<br /> 
																						<span id="atr3costforlist">От  <?php echo $discounts[1]['quantity'];  ?></span>	 
																					</td>
													<td id="costforlist3" <?php if(!$discounts[1]['quantity']) echo $sty;  ?> >				<?php echo $discounts[1]['price'];  ?>							</td> 						
																					<?php	++$iii; continue; }  ?>
																					
																					
																					
																									<?php 	 if(++$iii === $numItems) { ?>
																									<td ><?php echo $attribute['name']; ?>	</td>
													<td id="sizefanera">			<?php echo $attribute['text']; ?> 													</td> 
																					<?php	break; }  ?>
																					
																														<td><?php echo $attribute['name']; ?>	</td>
																														<td><?php echo $attribute['text']; ?></td>
																				
																						
																						
																						
                                          </tr>
                                          <?php } ?>
                                        </tbody>
                                        <?php } ?>
                                      </table>
                                    </div>
                                    <?php } ?>
                         <?php } ?>
                                    <!-- Атрибуты вывод -->
																		<div class="row">
																		<div class="col-sm-12"> 
																		<label  for="input-name"><b style="color:red;">*</b> Цена за 1 кв.м - <span id ="tmpcostlist"style="font-size:14pt;"></span></label>
																		</div></div>
																		<div class="row">
																		<div class="col-sm-12"> 
																		<label  for="input-name"><b style="color:red;">*</b> Продажа товара осуществляется листами.</label>
																		</div></div>
                           <!-- доставка расчет -->      
                   <div class="row">
                           <div class="col-sm-12">
                               <h4>Предварительный расчет</h4>
                           </div>
                    </div>

    
	<div class="row">
    <div class="col-sm-4">
        <label class="control-label" for="input-quantity">
            Количество м.кв.: 
        </label>

    </div>

    <div class="col-sm-2">
        <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
    </div>

    
    <div class="col-sm-4">
        <label class="control-label">Количество листов:</label>
      </div>  
      
    <div class="col-sm-2"  >
          <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity-fanera" class="form-control" />
        
    </div>
    </div>
		  <div class="row">
    <div class="col-sm-4">
        <label class="control-label" for="input-quantity">Выберите город:</label>
    </div>
    <div class="col-sm-8">
        <select id="dostavka_id" name="dostavka" class="form-control">
            <option value="">----Город----</option>
            <?php foreach ($cities as $city) { ?>
                <option value="<?php echo $city['Ref']; ?>">
                    <?php echo $city['DescriptionRu']; ?>
                </option>
                <?php } ?>
        </select>
    </div>
    </div>
		
    <div class="row">
    
    <div class="col-sm-4">
        <label class="control-label">Стоимость доставки:</label>
      </div>  
      
    <div class="col-sm-8"  >
          <label class="control-label" style="color: red;font-size: inherit;float: right;" id="resvaluecost"></label>
        
    </div>
    </div>
  
 
                      <!-- цена -->
                               <div class="row" style="margin-top:20px;">
                                    <div class="col-sm-4">
                                         
                                     
<h4> Общая сумма:</h4>
             
                                     </div>
                                    <div class="col-sm-4">
                                       
                                          <?php if ($price) { ?>
                                                      <ul class="list-unstyled" style="float:right;">
                                                        <?php if (!$special) { ?>
                                                        <li>
                                                          <h2 style="margin:0;" id="chcgpr"><?php echo $price; ?></h2>
                                                        </li>
                                                        <?php } else { ?>
                                                        <li><span style="text-decoration: line-through;"><?php echo $price; ?></span></li>
                                                        <li>
                                                          <h2><?php echo $special; ?></h2>
                                                        </li>
                                                        <?php } ?>
                                                        <?php if ($tax) { ?>
                                                        <li><?php echo $text_tax; ?> <?php echo $tax; ?></li>
                                                        <?php } ?>
                                                        <?php if ($points) { ?>
                                                        <li><?php echo $text_points; ?> <?php echo $points; ?></li>
                                                        <?php } ?>
                                                   
                                                      </ul>
                                                      <?php } ?>
                                       
                                   </div>
                                    <div class="col-sm-4">
<div class="form-group">
<input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />

<button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn buttoncard btn-lg btn-block" onclick="cart.add('<?php echo $product_id; ?>',coltocart)"><?php echo $button_cart; ?></button>
</div>
</div>
                               </div>
           
  
      
       
          <div id="product">
            <?php if ($options) { ?>
            <hr>
            <h3><?php echo $text_option; ?></h3>
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'image') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
<img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'time') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php } ?>
            <?php } ?>

           
                  
           
            <?php if ($minimum > 1) { ?>
            <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
            <?php } ?>
          </div>
  
        </div>
          <!-- slideshow product -->
          
          
          <!-- details -->
                <div class="row">
            <div class="col-xs-12">
                <h4 class="froboto" style="color:#00562f"> Детали заказа:</h4>
				<hr class="hrprdct" style="margin-left:0px; width:100%;">
            </div>
           
        </div>
          <div class="row">
              <div class="col-xs-12">
                  <p id="detals">
                    
                  </p>
              </div>
          </div>
          <!-- details -->
         <!-- sc dostavka -->
        <script>
		
		
		var frstcost;
		var coltocart=$('#input-quantity-fanera').val();
	var dostavka;
	 $.ajax({
                url: 'index.php?route=product/product/getNovaPrice',
                type: 'post',
                data: 'city=' + $('#dostavka_id').val() + '&quantity=' + $('#input-quantity-fanera').val() + '&product_id=<?php echo $product_id; ?>',
                dataType: 'json',
                success: function (json) {
                    if (json['error'])
                        alert(json['error']);
                    else if (json['cost'])
										$('#resvaluecost').html(json['cost']);
										dostavka=json['cost'];
										frstcost = json['price'];
										var elem = document.getElementById("input-quantity");
																elem.value = (parseFloat($('#sizefanera').text()));
																
																var lstcst=parseFloat(frstcost)/parseFloat($('#sizefanera').text());
	
	$('#tmpcostlist').html(lstcst.toFixed(2)+'грн.');  
																}
									});

	
	
        $('#dostavka_id, #input-quantity, #input-quantity-fanera').change(function () {
				
            $.ajax({
                url: 'index.php?route=product/product/getNovaPrice',
                type: 'post',
                data: 'city=' + $('#dostavka_id').val() + '&quantity=' + $('#input-quantity-fanera').val() + '&product_id=<?php echo $product_id; ?>',
                dataType: 'json',
                success: function (json) {
                    if (json['error'])
                        alert(json['error']);
                    else if (json['cost'])
										$('#resvaluecost').html(json['cost']+"грн.");
										frstcost = json['price'];
									 dostavka=json['cost'];
										var SzF=parseFloat($('#sizefanera').text());
										var inpkv=$('#input-quantity').val().replace(',','.');
										
										$('#tmpcostlist').html((frstcost/SzF).toFixed(2)+'грн.');
										
															if(coltocart!=$('#input-quantity-fanera').val())
															{
															coltocart=$('#input-quantity-fanera').val();
															var resss=coltocart*frstcost;
															$('#chcgpr').html(dostavka+resss+'грн.');
																
																
																var elem = document.getElementById("input-quantity");
																elem.value = (SzF*coltocart);
														
																
																						
																						inpkv=$('#input-quantity').val().replace(',','.');
																
															}
															if(inpkv>SzF)
															{
															if(inpkv%SzF==0)
															{
																	inpkv=$('#input-quantity-fanera').val().replace(',','.');
																	coltocart=inpkv;
																	var ress=parseFloat(coltocart*frstcost);
																	var elem = document.getElementById("input-quantity");
																	elem.value = SzF*coltocart;
																	$('#chcgpr').html(dostavka+ress+'грн.');
																		$('#tmpcostlist').html((frstcost/SzF).toFixed(2)+'грн.');
															
															}
															else 
																{
															
														
																inpkv=$('#input-quantity').val().replace(',','.');
																
																var tmps=inpkv%SzF;
																coltocart=parseFloat(inpkv)+(SzF-tmps);
																coltocart=parseInt(coltocart/SzF);
																
																var ress=parseFloat(coltocart*frstcost);
																var elem = document.getElementById("input-quantity-fanera");
																elem.value = coltocart;
																$('#chcgpr').html(dostavka+ress+'грн.');
																	
																	
																}
															}
															else
															{
																var ress=parseFloat(1*frstcost);
																var elem = document.getElementById("input-quantity-fanera");
																elem.value = 1;
																$('#chcgpr').html(dostavka+ress+'грн.'); 
															}
                     var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth()+1; //January is 0!

    var yyyy = today.getFullYear();
    if(dd<10){
        dd='0'+dd
    } 
    if(mm<10){
        mm='0'+mm
    } 
    var today = dd+'/'+mm+'/'+yyyy;
                    
                     $('#detals').html(' <p> Количество м.кв. &mdash; <strong>' + $('#input-quantity').val() +'</strong> </p> <p>Kоличество листов &mdash; <strong>'+$('#input-quantity-fanera').val()+'</strong></p> Oбщая стоимость заказа &mdash; <strong style="color:red;">'+ress+'грн </strong> без доставки </p> Cтоимость доставки в город <strong> '+$('#dostavka_id option:selected').text() + '</strong>&mdash; <strong style="color:#00562f;">'+parseFloat(dostavka)+'грн.</strong></p> <p><label for="input-name"><b style="color:red;">*</b> Стоимость доставки рассчитана по тарифам - "Новой Почты" на '+ today +'.</span></label>    </p>   '); 
                    
                    
                    
															coltocart=$('#input-quantity-fanera').val();
															},
																	error: function (xhr, textStatus, thrownError) {
																			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
																	}
                
                        
                
															});
  
            
						  
						
        });
			 	
    </script>
    <!-- sc dostavka -->  
 
					 
					 <!-- modify -->
					 	 <!-- child-->		                        
 <div  class = "chi" style="    margin-top: 15px; margin-bottom: 15px;">
    <?php $zzz=1; foreach ($products_child as $ch) { 
    if($ch['product_id']!=$product_id)
    {
        if($ch['sku']==$sku) { ?>
    <?php  if($zzz==1)
        {$zzz=0; ?>
        <div class="row">
            <div class="col-xs-12">
                <h4 class="froboto" style="color:#00562f"> Модификации:</h4>
								 <hr class="hrprdct" style="margin-left:0px; width:100%;">
            </div>
           
        </div>
        <?php } ?>
    <div class="row" style="   padding-top:3px;padding-bottom:3px;">
        <div class="col-xs-7">
            <a href="<?php echo $ch['href']; ?>">
                <?php echo $ch['name']; ?>
            </a>
        </div>
        <div class="col-xs-3"> <span class="price">
            <?php if (!$ch['special']) { ?>
            <?php echo $ch['price']; ?>
            <?php } else { ?>
                <span class="price-new"><?php echo $ch['special']; ?></span> <span class="price-old"><?php echo $ch['price']; ?></span>
            <?php } ?>
            <?php if ($ch['tax']) { ?>
                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $ch['tax']; ?></span>
            <?php } ?>
            </span>
        </div>
        <div class="col-xs-2">
            <a class="buttoncard hand " style=" float:right;      padding-top: 2px !important; padding-bottom: 2px !important;" href="<?php echo $ch['href']; ?>">Перейти</a>
        </div>
    </div>
    <?php  } } } ?>


</div>
		 	<!-- child-->
					 <!--modify -->
					 
					 
          <ul class="nav nav-tabs">
            <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
     
            <?php if ($review_status) { ?>
            <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
            <?php } ?>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-description">
				<!-- * = * -->
				<?php if(isset($seo_h2) && $seo_h2 && $seo_h2_position == 'before_description'){ ?>
				<h2><?php echo $seo_h2; ?></h2><?php } ?>
				<?php if(isset($seo_h3) && $seo_h3 && $seo_h3_position == 'before_description'){ ?>
				<h3><?php echo $seo_h3; ?></h3><?php } ?>
				<?php echo $description; ?></div>
            <?php if ($attribute_groups) { ?>
            <div class="tab-pane" id="tab-specification">
              <table class="table table-bordered">
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                <thead style=" background: #00562f;color:white">
                  <tr>
                    <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                  <tr>
                    <td><?php echo $attribute['name']; ?></td>
                    <td><?php echo $attribute['text']; ?></td>
                  </tr>
                  <?php } ?>
                </tbody>
                <?php } ?>
              </table>
            </div>
            <?php } ?>
            <?php if ($review_status) { ?>
            <div class="tab-pane" id="tab-review">
              <form class="form-horizontal" id="form-review">
                <div id="review"></div>
                <h2><?php echo $text_write; ?></h2>
                <?php if ($review_guest) { ?>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="" id="input-name" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                    <div class="help-block"><?php echo $text_note; ?></div>
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label"><?php echo $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<?php echo $entry_good; ?></div>
                </div>
                <?php echo $captcha; ?>
                <div class="buttons clearfix">
                  <div class="pull-right">
                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                  </div>
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
              </form>
            </div>
            <?php } ?>
            
            
            
            
            <!--recomendation -->
            
            
              <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } ?>
      <?php if ($products) { ?>
      <h3><?php echo $text_related; ?></h3>
      <div class="row">
        <?php $jq = $i = 0; ?>
        <?php foreach ($products as $product) { 
        $jq++; 
        if($jq==4)break; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-lg-6 col-md-6 col-sm-12 col-xs-12'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-lg-4 col-md-4 col-sm-6 col-xs-12'; ?>
        <?php } else { ?>
        <?php $class = 'col-lg-3 col-md-3 col-sm-6 col-xs-12'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <div class="product-thumb transition">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div class="caption">
              <h4 style="text-align:center;"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
              <p><?php echo $product['description']; ?></p>
              <?php if ($product['rating']) { ?>
              <div class="rating">
                <?php for ($i = 1; $i <= 5; $i++) { ?>
                <?php if ($product['rating'] < $i) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } ?>
              <?php if ($product['price']) { ?>
              <p class="price">
                <?php if (!$product['special']) { ?>
                  Цена за лист: <strong> <?php echo $product['price']; ?> </strong>
                <?php } else { ?>
                <span class="price-new">Цена за лист: <?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                <?php } ?>
                <?php if ($product['tax']) { ?>
                <span class="price-tax">Цена за лист: <?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                <?php } ?>
              </p>
              <?php } ?>
            </div>
            <div style="margin-bottom:10px;">
               <div class="row">
                   <div class="col-xs-12" style="text-align:center;">
                        <a class="buttonbl" style="    display: inline-block;" href="<?php echo $product['href']; ?>"> Подробнее</a>
                       
                   </div>
                   
                   
               </div>
               
            </div>
          </div>
        </div>
        <?php if (($column_left && $column_right) && ($i % 2 == 0)) { ?>
        <div class="clearfix visible-md visible-sm"></div>
        <?php } elseif (($column_left || $column_right) && ($i % 3 == 0)) { ?>
        <div class="clearfix visible-md"></div>
        <?php } elseif ($i % 4 == 0) { ?>
        <div class="clearfix visible-md"></div>
        <?php } ?>
        <?php $i++; ?>
        <?php } ?>
      </div>
      <?php } ?>
            
            <!--recomendation -->
            
            
            
            
            
            
          </div>
        </div>
          </div>
      
      <?php if ($tags) { ?>
      <p><?php echo $text_tags; ?>
        <?php for ($i = 0; $i < count($tags); $i++) { ?>
        <?php if ($i < (count($tags) - 1)) { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
        <?php } else { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
        <?php } ?>
        <?php } ?>
      </p>
         
          
      <?php } ?> 
    </div>     
          

     
          
   
          
         

          
         
      </div>
      
 
      
      
      
    <?php echo $column_right; ?>
       
      
      <?php echo $content_bottom; ?>
      
      </div>
      
      
     
      
  


<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html('<i class="fa fa-shopping-cart"></i> ' + json['total']);

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
//--></script>
<?php echo $footer; ?>
