using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;
using System.Linq;
using System.Text;

namespace CodeFirst
{
    class Program
    {
        static void Main(string[] args)
        {
            Database.SetInitializer(new Initer());
            using (var db = new MyDb())
            {
                var list = db.Blogs.ToList();
                list.ForEach(b=>Console.WriteLine(b.BlogName));
                Console.ReadLine();
            }
        }
    }

    public class Initer : DropCreateDatabaseAlways<MyDb>
    {
        protected override void Seed(MyDb db)
        {
            db.Blogs.Add(new Blog() { BlogName = "aaa" });
            db.SaveChanges();
            base.Seed(db);
        }
    }

    public class Blog
    {
        public int BlogId { get; set; }
        public string BlogName { get; set; }
        public string Url { get; set; }

        public virtual List<Post> Posts { get; set; }
    }

    public class Post
    {
        public int PostId { get; set; }
        public string PostName { get; set; }
        public DateTime CreateDate { get; set; }

        public int BlogId { get; set; }
        public virtual Blog Blog { get; set; }
    }

    public class User
    {
        [Key]
        public string Username { get; set; }
        public string DisplayName { get; set; }
        public string Password { get; set; }
    }
    public class Test
    {
        [Key]
        public string A { get; set; }
        public string B { get; set; }
    }


    public class MyDb : DbContext
    {
        public MyDb() : base("name=DB")
        {
            
        }

        public DbSet<User> Users { get; set; }
        public DbSet<Blog> Blogs { get; set; }
        public DbSet<Post> Posts { get; set; }
        public DbSet<Test> Tests { get; set; }
    }
}
