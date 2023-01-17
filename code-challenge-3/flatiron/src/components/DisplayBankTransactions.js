import React, { useState, useEffect } from 'react';
import TransactionForm from './TransactionTable';

function BankTransaction() {
  const [transactions, setTransactions] = useState([]);

  useEffect(() => {
    
    fetch('http://localhost:3000/transactions')
      .then(res => res.json())
      .then(data => setTransactions(data));
  }, []);

  return (
    <div>
      <table>
        <thead>
          <tr>
            <th>Description</th>
            <th>Amount</th>
            <th>Category</th>
            <th>Date</th>
          </tr>
        </thead>
        <tbody>
          {transactions.map(transaction => (
            <tr key={transaction.id}>
              <td>{transaction.description}</td>
              <td>{transaction.amount}</td>
              <td>{transaction.category}</td>
              <td>{transaction.date}</td>
            </tr>
          ))}
        </tbody>
      </table>
      <TransactionTable/>
     </div>
  ) 
  }
export default BankTransaction;
