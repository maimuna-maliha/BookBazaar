<?php include 'includes/header.php'; ?>

<main class="page-wrapper">
    <div class="contact-container">
        
        <div class="contact-info">
            <h1>Contact Us</h1>
            <p>If you have any questions, feedback, or need support, feel free to reach out to us.</p>

            <h3>Contact Information</h3>
            <p>Email: <a href="mailto:info@bookbazaar.com">info@bookbazaar.com</a></p>
            <p>Phone: +880 1234-56789</p>
            <p>Address: 123 BookBazaar, Dhaka, Bangladesh</p>
        </div>

        <div class="contact-form">
            <h3>Send Us a Message</h3>
            <form class="needs-validation" method="post" action="contact_submit.php">
                <input type="text" name="name" placeholder="Your Name" required>
                <input type="email" name="email" placeholder="Your Email" required>
                <textarea name="message" placeholder="Your Message" rows="5" required></textarea>
                <button type="submit" onclick="window.location='contact.php?>'">Send Message</button>
            </form>
        </div>
    </div>
</main>

<?php include 'includes/footer.php'; ?>
