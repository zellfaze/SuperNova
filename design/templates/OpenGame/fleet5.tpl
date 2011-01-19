<script type="text/javascript" src="js/fleet.js"></script>

<br>
<!-- IF .results -->
  <table border="0" cellpadding="0" cellspacing="1">
    <tr><td colspan="2" class="c">{L_flt_gather_report}</td></tr>
    <tr>
      <td class="c">{L_fl_from}</td>
      <td class="c">{L_flt_report}</td>
    </tr>

    <!-- BEGIN results -->
    <tr>
      <td>{results.TYPE_PRINT} &quot;{results.NAME}&quot; [{results.GALAXY}:{results.SYSTEM}:{results.PLANET}]</td>
      <td>
        <b>{results.MESSAGE}</b><br>
        <!-- BEGIN units -->
          {results.units.NAME} {results.units.AMOUNT}<br />
        <!-- END units -->
      </td>
    </tr>
    <!-- END results -->
  </table>
  <br />
<!-- ENDIF -->
    
<form action="fleet.php?fleet_page=5" method="post">
  <table border="0" cellpadding="0" cellspacing="1">
    <tr><td colspan="6" class="c">{L_flt_gather_all}</td></tr>
    <tr>
      <td class="c"><input id="planet_gather_all" type="checkbox" onclick="jQuery('.planet_gather').attr('checked', jQuery('#planet_gather_all').is(':checked'));"></td>
      <td class="c">{L_sys_coordinates}</td>
      <td class="c">{L_fl_from}</td>
      <td class="c">{L_sys_metal}</td>
      <td class="c">{L_sys_crystal}</td>
      <td class="c">{L_sys_deuterium}</td>
    </tr>

    <!-- BEGIN colonies -->       
      <tr>
        <th><input type="checkbox" name="planets[]" value="{colonies.ID}" class="planet_gather"></th>
        <th>[{colonies.GALAXY}:{colonies.SYSTEM}:{colonies.PLANET}]</th>
        <th><span class="fl">{colonies.TYPE_PRINT} &quot;{colonies.NAME}&quot;</span></th>
        <th><span class="fr">{colonies.METAL}</span></th>
        <th><span class="fr">{colonies.CRYSTAL}</span></th>
        <th><span class="fr">{colonies.DEUTERIUM}</span></th>
      </tr>
    <!-- BEGINELSE colonies -->
      <th colspan="6">{L_fl_nocolonies}</th>
    <!-- END colonies -->
    <tr><td class="c" colspan="6" align="center"><input type="submit" value="{L_flt_gather_all}" /></td></tr>

  </table>
  <!-- INCLUDE page_hint.tpl -->
</form>

<script type="text/javascript"><!--
/*
   jQuery(document).ready(function() 
     {
       jQuery('#planet_gather_all').attr('checked', true);
       jQuery('#planet_gather_all').click();
     }
   );
*/
--></script> 