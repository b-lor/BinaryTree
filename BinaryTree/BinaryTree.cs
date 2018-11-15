using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BinaryTree
{
    public class BinaryTreeSearch
    {
        List<string> directions = new List<string>();
        public string directionsString;


        public Node AddNode(Node node, int value)
        {
            if (node == null)
            {
                node = new Node();
                node.value = value;

            }
            else if (node.value == value)
            {
                return node;
            }
            else if (node.value > value)
            {
                node.left = AddNode(node.left, value);
            }
            else if (node.value < value)
            {
                node.right = AddNode(node.right, value);
            }
            return node;
        }

        public bool FindValue(Node node, int value)
        {
            if (node == null)
            {
                return false;
            }
            else if (node.value == value)
            {
                return true;
            }
            else if (node.value > value)
            {
                directions.Add("Left ");
                FindValue(node.left, value);

            }
            else if (node.value < value)
            {
                directions.Add("Right ");
                FindValue(node.right, value);
            }


            Console.WriteLine(directions);
            directionsString = string.Join(", ", directions.ToArray());

            return true;
        }

    }
}

