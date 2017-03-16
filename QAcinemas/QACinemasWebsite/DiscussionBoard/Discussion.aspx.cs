using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QACinemasWebsite.DiscussionBoard
{
    public partial class Discussion : System.Web.UI.Page
    {
        DataSet.UsersRow USER;
        DataSetTableAdapters.PostsTableAdapter pta = new DataSetTableAdapters.PostsTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            USER = (DataSet.UsersRow)Session["UserInfo"];
        }

        protected string PostTextFormatter(string input)
        {
            /*
             *   If there is ever a validation error with post quotes, god help you.
             */
            char[] inputarray = input.ToCharArray();

            for (int i = 0; i < inputarray.Length; i++)
            {
                try
                {
                    if (inputarray[i] == '@' && inputarray[i + 1] == '@')
                    {
                        string command = "";

                        for (int j = i; j < inputarray.Length; j++)
                        {
                            if (Char.IsNumber(inputarray[j]) || inputarray[j] == '@')
                            {
                                command += Char.ToString(inputarray[j]);
                            }
                            else break;
                        }

                        if (command != "@@" && !String.IsNullOrEmpty(command))
                        {
                            string trimmedcommand = command;
                            trimmedcommand = trimmedcommand.TrimStart('@');
                            trimmedcommand = trimmedcommand.TrimEnd();
                            try
                            {
                                long postid = Convert.ToInt32(trimmedcommand);
                                DataSet.PostsDataTable data = pta.GetPostByPostId(postid);

                                if (data.Count > 0)
                                {
                                    string quotetext = "<blockquote>" + data[0].Text + "</blockquote>";
                                    input = input.Replace(command, quotetext);
                                }
                            }
                            catch (FormatException exc) { /*String formatting error! Don't bother with it*/};
                        }

                    }
                }
                catch (IndexOutOfRangeException exc)
                {
                    //Doesn't hurt anyone, don't worry
                }
            }

            //NEW LINE FORMATTING
            input = input.Replace("\n", "<br />");
            //TAB FORMATTING
            input = input.Replace("\t", "&nbsp;&nbsp;&nbsp;&nbsp;");
            return input;
        }

        protected void PostSubmitButton_Click(object sender, EventArgs e)
        {

            pta.InsertPost(USER.Id, Convert.ToUInt32(Request["id"].ToString()), PostTextBox.Text);
            PostTextBox.Text = null;
        }
    }
}