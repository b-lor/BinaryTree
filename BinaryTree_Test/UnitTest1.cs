using System;
using BinaryTree;
using Microsoft.VisualStudio.TestTools.UnitTesting;



namespace BinaryTree_Test
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            BinaryTreeSearch binaryTreeSearch = new BinaryTreeSearch();
            Node node = new Node();
            string expected = "Right , Right, Right ";

            binaryTreeSearch.AddNode(node, 10);
            binaryTreeSearch.AddNode(node, 15);
            binaryTreeSearch.AddNode(node, 20);
            binaryTreeSearch.AddNode(node, 30);
            binaryTreeSearch.AddNode(node, 5);
            binaryTreeSearch.AddNode(node, 6);
            binaryTreeSearch.AddNode(node, 7);

            binaryTreeSearch.FindValue(node, 20);
            string actual = binaryTreeSearch.directionsString;

            Assert.AreEqual(expected, actual);
        }

        [TestMethod]
        public void TestMethod2()
        {
            BinaryTreeSearch binaryTreeSearch = new BinaryTreeSearch();
            Node node = new Node();
            string expected = "Right , Left , Left ";

            binaryTreeSearch.AddNode(node, 10);
            binaryTreeSearch.AddNode(node, 5);
            binaryTreeSearch.AddNode(node, 20);
            binaryTreeSearch.AddNode(node, 30);
            binaryTreeSearch.AddNode(node, 4);
            binaryTreeSearch.AddNode(node, 6);
            binaryTreeSearch.AddNode(node, 7);

            binaryTreeSearch.FindValue(node, 4);
            string actual = binaryTreeSearch.directionsString;

            Assert.AreEqual(expected, actual);
        }
    }
}
