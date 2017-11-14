package gov.medicaid.handlebars;

public class HelperSource {

    public String optionsList(
            List<string> optionsList,
            String selectedValue,
            String options
    ) {
        string out = "";
        for (String value : optionsList) {
            Map<string, string> item;
            item["description"] = value;
            item["selectedMarkup"] = selectedValue.equals(value) ? " selected=\"selected\"" : "";
            out = out + options.fn(item);
        }
        return out;
    }
}
