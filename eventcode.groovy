
		case "pa":
			eventtype = "Accrued Interest - Purchase"
			break
		case "sa":
			eventtype = "Accrued Interest - Sell"
			break
		case "ac":
			eventtype = "Adjust Cost - Long"
			break
		case "as":
			eventtype = "Adjust Cost - Short"
			break
		case "by":
			eventtype = "Purchases"
			break
		case "lc":
			eventtype = "Change - Long"
			break
		case "sc":
			eventtype = "Change - Short"
			break
		case ";":
			eventtype = "Comment"
			break
		case "cs":
			eventtype = "Cover Short"
			break
		case "li":
			eventtype = "Transfer In - Long"
			break
		case "si":
			eventtype = "Deliver In - Short"
			break
		case "lo":
			eventtype = "Transfer Out - Long"
			break
		case "so":
			eventtype = "Deliver Out - Short"
			break
		case "dp":
			if (input.Type == "exus" || input.Type == "epus" || input.Type == "awus" ) {eventtype = "Withdrawal"} else {eventtype = "Deposit"}
			break
		case "dv":
			eventtype = "Dividend"
			break
		case "dr":
			eventtype = "Dividend Reclaim"
			break
		case "dw":
			eventtype = "Dividend Reclaim Writeoff"
			break
		case "in":
			eventtype = "Interest"
			break
		case "ir":
			eventtype = "Interest Reclaim"
			break
		case "iw":
			eventtype = "Interest Reclaim Writeoff"
			break
		case "ai":
			eventtype = "Negative Interest"
			break
		case "pd":
			eventtype = "Paydown - Long"
			break
		case "ps":
			eventtype = "Paydown - Short"
			break
		case "rc":
			eventtype = "Return of Capital - Long"
			break
		case "rs":
			eventtype = "Return of Capital - Short"
			break
		case "sl":
			eventtype = "Sales"
			break
		case "ss":
			eventtype = "Sell Short"
			break
		case "ti":
			eventtype = "Transfer In - Long"
			break
		case "ts":
			eventtype = "Transfer In - Short"
			break
		case "to":
			eventtype = "Transfer Out - Long"
			break
		case "tr":
			eventtype = "Transfer Out - Short"
			break
		case "wd":
			eventtype = "Withdrawal"
			break
		default:
			eventtype = "Other"
			break
