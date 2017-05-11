  
  // to change and click on the GridView and posting the id with into another page
  
  protected void GridView1_RowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e) {
        if ((e.Row.RowType == DataControlRowType.DataRow)) {
            e.Row.Attributes.Add("onclick", ("location.href = \'deko_2017_daten_aendern.aspx?id=" 
                            + (e.Row.Cells[10].Text + "\'")));
            e.Row.Attributes.Add("onMouseOver", "this.style.backgroundColor=\'Silver\'");
            int result;
            Math.DivRem(e.Row.RowIndex, 2, result);
            if ((result == 0)) {
                e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor=\'#FFFFFF\'");
            }
            else {
                e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor=\'#DFDFDF\'");
            }
            
            e.Row.Cells[10].Visible = false;
        }
        
    }
	
	