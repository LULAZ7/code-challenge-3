import React from "react";

function TranscationForm(){

    const [transactions, setTransactions] = useState()
       
    const handleSubmit = (event) => {
        event.preventDefault();
        
        const date = event.target.date.value;
        const description = event.target.description.value;
        const amount = event.target.amount.value;
        
        const newTransaction = {
            id: transactions.length + 1,
            date: date,
            description: description,
            category: category,
            amount: amount
        }
        
        setTransactions([...transactions, newTransaction]);
    }

    return(
        <div>
            <h2>Add New Transaction</h2>
            <form onSubmit={handleSubmit}>
                <label>
                    Date:
                    <input type="text" name="date" placeholder="mm/dd/yyyy" />
                </label>
                <br />
                <label>
                    Description:
                    <input type="text" name="description" placeholder="Enter description" />
                </label>
                <br />
                <label>
                    Category:
                    <input type="text" name="description" placeholder="Enter description" />
                </label>
                <br />
                <label>
                    Amount:
                    <input type="number" name="amount" placeholder="Enter amount" />
                </label>
                <br />
                <input type="submit" value="Submit" />
            </form>
        </div>
    );
    }

export default TransactionForm




