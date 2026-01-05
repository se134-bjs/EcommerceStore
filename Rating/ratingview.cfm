<cfoutput>
    <cfquery name="rating" datasource="edata">
        select * from rating;
    </cfquery>
    <form name="form" method="post"  action="/Rating/rating.cfm" >
        <table border="2">
            <tr>
                <th rowspan="2">Heading</th>
                <th><label>Rate Stars</label></th>
                <td><input type="int" name="star"></input> </td>
                <td><input type="submit" </input> </td>
            </tr>
            <tr>
                <th><label> Give Rating</label></th>
                <td><input type="textarea" name="reviews"></input></td>
                <td><input type="submit" </input> </td>
                </tr>
        </table>
    </form>
</cfoutput>