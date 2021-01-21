using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleWebForm
{
    public partial class TambahProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                odsProduct.InsertParameters["ProductName"].DefaultValue = txtProductName.Text;
                odsProduct.InsertParameters["SupplierID"].DefaultValue = ddSupplier.SelectedValue;
                odsProduct.InsertParameters["CategoryID"].DefaultValue = ddCategory.SelectedValue;
                odsProduct.InsertParameters["QuantityPerUnit"].DefaultValue = txtQuantityPerUnit.Text;
                odsProduct.InsertParameters["UnitPrice"].DefaultValue = txtUnitPrice.Text;
                odsProduct.InsertParameters["UnitsInStock"].DefaultValue = txtUnitsInStock.Text;
                odsProduct.InsertParameters["UnitsOnOrder"].DefaultValue = txtUnitsOnOrder.Text;
                odsProduct.InsertParameters["ReorderLevel"].DefaultValue = txtReorderLevel.Text;
                odsProduct.InsertParameters["Discontinued"].DefaultValue = chkDiscontinued.Checked.ToString();

                odsProduct.Insert();
                ltKeterangan.Text = $"<span class='alert alert-success'>Product {txtProductName.Text} berhasil diambah</span>";
            }
            catch (Exception ex)
            {
                ltKeterangan.Text = $"<span class='alert alert-danger'>Error: {ex.Message}</span>";
            }
        }
    }
}