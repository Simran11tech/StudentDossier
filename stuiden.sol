// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentIdentityManager {
    address public admin;

    struct Document {
        string ipfsHash;  // Store document hash on IPFS
        uint256 timestamp;  // Time when the document was added
        bool exists;  // Check if the document exists
    }

    struct Student {
        string name;
        uint256 dob;  // Date of birth
        mapping(string => Document) documents;  // Mapping to store different types of documents
    }

    mapping(address => Student) public students;

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    constructor() {
        admin = msg.sender;
    }

    // Function to add or update student information
    function addStudent(address studentAddress, string memory name, uint256 dob) public onlyAdmin {
        Student storage student = students[studentAddress];
        student.name = name;
        student.dob = dob;
    }

    // Function to upload a document for a student
    function uploadDocument(address studentAddress, string memory docType, string memory ipfsHash) public onlyAdmin {
        Student storage student = students[studentAddress];
        student.documents[docType] = Document({
            ipfsHash: ipfsHash,
            timestamp: block.timestamp,
            exists: true
        });
    }

    // Function to retrieve a student's document
    function getDocument(address studentAddress, string memory docType) public view returns (string memory ipfsHash, uint256 timestamp) {
        Student storage student = students[studentAddress];
        Document memory doc = student.documents[docType];
        require(doc.exists, "Document does not exist");
        return (doc.ipfsHash, doc.timestamp);
    }

    // Function to retrieve student's basic information
    function getStudentInfo(address studentAddress) public view returns (string memory name, uint256 dob) {
        Student storage student = students[studentAddress];
        return (student.name, student.dob);
    }
    
    // Admin can transfer the ownership of the contract
    function transferAdmin(address newAdmin) public onlyAdmin {
        require(newAdmin != address(0), "Invalid address");
        admin = newAdmin;
    }
}
