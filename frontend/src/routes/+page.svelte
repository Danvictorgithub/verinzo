<script>
  // Active section for mobile menu
  let isMenuOpen = false;
  
  // Sample data for courses
  const courses = [
    {
      title: "Web Development Fundamentals",
      description: "Learn HTML, CSS, JavaScript and build your first websites",
      icon: "🌐",
      lessons: 42,
      duration: "3 months",
      level: "Beginner"
    },
    {
      title: "Full-Stack JavaScript",
      description: "Master Node.js, Express, MongoDB and React to build complete applications",
      icon: "⚛️",
      lessons: 78,
      duration: "5 months",
      level: "Intermediate"
    },
    {
      title: "Ruby on Rails",
      description: "Build powerful web applications quickly with Ruby on Rails",
      icon: "💎",
      lessons: 56,
      duration: "4 months",
      level: "Intermediate"
    },
    {
      title: "Database Design & SQL",
      description: "Learn database fundamentals, SQL, and data modeling",
      icon: "🗄️",
      lessons: 35,
      duration: "2 months",
      level: "Beginner"
    },
    {
      title: "DevOps & Deployment",
      description: "Master CI/CD, Docker, and cloud deployment strategies",
      icon: "🚀",
      lessons: 48,
      duration: "3 months",
      level: "Advanced"
    },
    {
      title: "Open Source Contribution",
      description: "Learn to contribute to open source projects and collaborate with others",
      icon: "👥",
      lessons: 28,
      duration: "2 months",
      level: "Intermediate"
    }
  ];
  
  // Sample data for features
  const features = [
    {
      title: "Structured Curriculum",
      description: "Follow a carefully designed learning path that builds your skills progressively",
      icon: "📚",
      content: "Our curriculum is organized into modules that build upon each other, ensuring you develop a solid foundation before moving on to more advanced concepts."
    },
    {
      title: "Project-Based Learning",
      description: "Learn by building real projects that reinforce your understanding",
      icon: "🛠️",
      content: "Each module includes practical projects that challenge you to apply what you've learned, helping you build a portfolio while mastering coding skills."
    },
    {
      title: "Supportive Community",
      description: "Join thousands of learners in our active Discord community",
      icon: "👥",
      content: "Get help when you're stuck, share your progress, and connect with fellow learners and mentors who are passionate about coding."
    },
    {
      title: "Interactive Challenges",
      description: "Test your knowledge with coding challenges and quizzes",
      icon: "⚡",
      content: "Reinforce your learning with interactive exercises that provide immediate feedback and help you identify areas for improvement."
    },
    {
      title: "Open Source",
      description: "Our curriculum is open source and constantly improving",
      icon: "🔄",
      content: "Benefit from a curriculum that evolves with industry trends and best practices, with contributions from experienced developers."
    },
    {
      title: "Modern Tech Stack",
      description: "Learn the most in-demand technologies used by top companies",
      icon: "💻",
      content: "Our curriculum focuses on technologies that are widely used in the industry, ensuring you develop skills that employers are looking for."
    }
  ];
  
  // Sample data for testimonials
  const testimonials = [
    {
      name: "Alex Johnson",
      role: "Frontend Developer at TechCorp",
      quote: "Verinzo completely changed my career trajectory. The project-based approach helped me build a portfolio that impressed employers, and I landed my dream job within 3 months of completing the curriculum.",
      rating: 5,
      image: "https://randomuser.me/api/portraits/men/32.jpg"
    },
    {
      name: "Sarah Chen",
      role: "Full Stack Developer at StartupX",
      quote: "The community support at Verinzo is incredible. Whenever I got stuck, there was always someone willing to help. The curriculum is challenging but extremely rewarding.",
      rating: 5,
      image: "https://randomuser.me/api/portraits/women/44.jpg"
    },
    {
      name: "Michael Rodriguez",
      role: "Software Engineer at BigTech",
      quote: "I tried several coding platforms before finding Verinzo. The structured approach and real-world projects made all the difference. I'm now earning twice what I made before.",
      rating: 5,
      image: "https://randomuser.me/api/portraits/men/67.jpg"
    }
  ];
  
  // Toggle mobile menu
  function toggleMenu() {
    isMenuOpen = !isMenuOpen;
  }
</script>

<div class="flex flex-col min-h-screen">
  <!-- Navigation -->
  <header class="sticky top-0 z-50 w-full transition-all duration-200 bg-white/80/80 backdrop-blur-md shadow-sm">
    <div class="container mx-auto flex h-16 items-center justify-between px-4 md:px-6">
      <a href="/" class="flex items-center gap-2">
        <span class="font-bold text-2xl bg-clip-text text-transparent bg-gradient-to-r from-blue-600 to-blue-400">
          Verinzo
        </span>
      </a>
      <nav class="hidden md:flex gap-6">
        <a href="/courses" class="text-sm font-medium hover:text-blue-600 transition-colors">
          Courses
        </a>
        <a href="/curriculum" class="text-sm font-medium hover:text-blue-600 transition-colors">
          Curriculum
        </a>
        <a href="/community" class="text-sm font-medium hover:text-blue-600 transition-colors">
          Community
        </a>
        <a href="/about" class="text-sm font-medium hover:text-blue-600 transition-colors">
          About
        </a>
      </nav>
      <div class="hidden md:flex gap-4 items-center">
        <a href="/login" class="px-4 py-2 text-sm font-medium rounded-md hover:bg-gray-100 transition-colors">
          Log in
        </a>
        <a href="/signup" class="px-4 py-2 text-sm font-medium bg-blue-600 text-white rounded-md hover:bg-blue-700 transition-colors">
          Sign up
        </a>
      </div>
      <button on:click={toggleMenu} class="md:hidden p-2 rounded-md hover:bg-gray-100" aria-label="Menu">
        <span class="block w-6 h-0.5 bg-gray-900 mb-1.5"></span>
        <span class="block w-6 h-0.5 bg-gray-900 mb-1.5"></span>
        <span class="block w-6 h-0.5 bg-gray-900"></span>
      </button>
    </div>
    
    <!-- Mobile menu -->
    {#if isMenuOpen}
    <div class="md:hidden bg-white dark:bg-slate-950 border-t">
      <div class="container mx-auto px-4 py-4 flex flex-col gap-4">
        <a href="/courses" class="text-lg font-medium hover:text-blue-600 transition-colors">
          Courses
        </a>
        <a href="/curriculum" class="text-lg font-medium hover:text-blue-600 transition-colors">
          Curriculum
        </a>
        <a href="/community" class="text-lg font-medium hover:text-blue-600 transition-colors">
          Community
        </a>
        <a href="/about" class="text-lg font-medium hover:text-blue-600 transition-colors">
          About
        </a>
        <div class="flex flex-col gap-2 mt-4">
          <a href="/login" class="w-full px-4 py-2 text-center border border-gray-300 rounded-md hover:bg-gray-100 transition-colors">
            Log in
          </a>
          <a href="/signup" class="w-full px-4 py-2 text-center bg-blue-600 text-white rounded-md hover:bg-blue-700 transition-colors">
            Sign up
          </a>
        </div>
      </div>
    </div>
    {/if}
  </header>

  <main class="flex-1">
    <!-- Hero Section -->
    <section class="relative py-20 md:py-28 overflow-hidden bg-slate-950 text-white">
      <!-- Background gradient -->
      <div class="absolute inset-0 bg-gradient-to-br from-blue-600/20 via-slate-950 to-slate-950"></div>
      
      <!-- Animated code lines (decorative) -->
      <div class="absolute inset-0 opacity-10">
        {#each Array(20) as _, i}
          <div 
            class="absolute h-px bg-gradient-to-r from-transparent via-blue-500/50 to-transparent"
            style="top: {Math.random() * 100}%; left: 0; right: 0; opacity: {Math.random() * 0.5 + 0.25}; transform: translateY({Math.random() * 10}px); animation: pulse {Math.random() * 5 + 5}s infinite"
          ></div>
        {/each}
      </div>
      
      <div class="container mx-auto relative px-4 md:px-6">
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-8 items-center">
          <div class="flex flex-col space-y-6">
            <h1 class="text-4xl font-bold tracking-tighter sm:text-5xl md:text-6xl lg:text-7xl">
              Learn to <span class="text-blue-500">Code</span> by Building Real Projects
            </h1>
            <p class="text-xl text-slate-300 max-w-[600px]">
              Verinzo provides a free, comprehensive curriculum to help you learn web development through hands-on projects and real-world applications.
            </p>
            <div class="space-y-3">
              <div class="flex items-center gap-2">
                <span class="text-blue-500">✓</span>
                <span>100% free and open-source curriculum</span>
              </div>
              <div class="flex items-center gap-2">
                <span class="text-blue-500">✓</span>
                <span>Project-based learning approach</span>
              </div>
              <div class="flex items-center gap-2">
                <span class="text-blue-500">✓</span>
                <span>Active community of learners and mentors</span>
              </div>
            </div>
            <div class="flex flex-col sm:flex-row gap-4 pt-4">
              <a href="/get-started" class="px-6 py-3 text-center font-medium bg-blue-600 text-white rounded-full hover:bg-blue-700 transition-colors">
                Get Started
              </a>
              <a href="/curriculum" class="px-6 py-3 text-center font-medium border border-white/20 rounded-full hover:bg-white/10 transition-colors">
                View Curriculum
              </a>
            </div>
          </div>
          <div class="relative h-[400px] lg:h-[500px] rounded-lg overflow-hidden border border-slate-800 shadow-2xl">
            <div class="absolute top-0 w-full h-8 bg-slate-800 flex items-center px-4">
              <div class="flex gap-2">
                <div class="w-3 h-3 rounded-full bg-red-500"></div>
                <div class="w-3 h-3 rounded-full bg-yellow-500"></div>
                <div class="w-3 h-3 rounded-full bg-green-500"></div>
              </div>
            </div>
            <div class="pt-8 p-4 h-full bg-slate-900 font-mono text-sm text-green-400 overflow-hidden">
              <div class="typewriter">
                <p class="mb-2"><span class="text-blue-400">const</span> <span class="text-yellow-400">learnToCode</span> = <span class="text-purple-400">async</span> () => {'{'}</p>
                <p class="ml-4 mb-2"><span class="text-blue-400">const</span> <span class="text-yellow-400">skills</span> = [<span class="text-green-400">'HTML'</span>, <span class="text-green-400">'CSS'</span>, <span class="text-green-400">'JavaScript'</span>, <span class="text-green-400">'React'</span>, <span class="text-green-400">'Node.js'</span>];</p>
                <p class="ml-4 mb-2"><span class="text-blue-400">const</span> <span class="text-yellow-400">projects</span> = [];</p>
                <p class="ml-4 mb-2"></p>
                <p class="ml-4 mb-2"><span class="text-blue-400">for</span> (<span class="text-blue-400">const</span> <span class="text-yellow-400">skill</span> <span class="text-blue-400">of</span> <span class="text-yellow-400">skills</span>) {'{'}</p>
                <p class="ml-8 mb-2"><span class="text-blue-400">await</span> <span class="text-yellow-400">learn</span>(<span class="text-yellow-400">skill</span>);</p>
                <p class="ml-8 mb-2"><span class="text-blue-400">const</span> <span class="text-yellow-400">project</span> = <span class="text-blue-400">await</span> <span class="text-yellow-400">buildProject</span>(<span class="text-yellow-400">skill</span>);</p>
                <p class="ml-8 mb-2"><span class="text-yellow-400">projects</span>.push(<span class="text-yellow-400">project</span>);</p>
                <p class="ml-4 mb-2">}</p>
                <p class="ml-4 mb-2"></p>
                <p class="ml-4 mb-2"><span class="text-blue-400">return</span> {'{'}</p>
                <p class="ml-8 mb-2"><span class="text-yellow-400">skills</span>,</p>
                <p class="ml-8 mb-2"><span class="text-yellow-400">projects</span>,</p>
                <p class="ml-8 mb-2"><span class="text-yellow-400">success</span>: <span class="text-blue-400">true</span></p>
                <p class="ml-4 mb-2">};</p>
                <p class="mb-2">}</p>
                <p class="mb-2"></p>
                <p class="mb-2"><span class="text-yellow-400">learnToCode</span>().then(<span class="text-yellow-400">result</span> => console.log(<span class="text-green-400">'Career ready!'</span>, <span class="text-yellow-400">result</span>));</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Features Section -->
    <section class="py-16 bg-white dark:bg-slate-950">
      <div class="container mx-auto px-4 md:px-6">
        <div class="flex flex-col items-center justify-center space-y-4 text-center mb-12">
          <span class="px-3 py-1 text-sm border border-gray-200 rounded-full">Features</span>
          <h2 class="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl">Why Choose Verinzo</h2>
          <p class="max-w-[700px] text-gray-500 md:text-xl">
            Our platform is designed to provide you with the best learning experience
          </p>
        </div>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {#each features as feature}
            <div class="border rounded-lg overflow-hidden transition-all hover:shadow-lg">
              <div class="p-6 pb-2">
                <div class="text-blue-600 mb-4 text-3xl">
                  {feature.icon}
                </div>
                <h3 class="text-xl font-semibold mb-1">{feature.title}</h3>
                <p class="text-gray-500 text-sm mb-4">{feature.description}</p>
              </div>
              <div class="px-6 pb-6">
                <p class="text-sm text-gray-500">{feature.content}</p>
              </div>
            </div>
          {/each}
        </div>
      </div>
    </section>
    
    <!-- Learning Paths Section -->
    <section class="py-16 bg-slate-50 dark:bg-slate-900">
      <div class="container mx-auto px-4 md:px-6">
        <div class="flex flex-col items-center justify-center space-y-4 text-center mb-12">
          <span class="px-3 py-1 text-sm bg-blue-100 text-blue-800 rounded-full">Learning Paths</span>
          <h2 class="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl">Choose Your Path</h2>
          <p class="max-w-[700px] text-gray-500 md:text-xl">
            Structured learning paths to take you from beginner to professional developer
          </p>
        </div>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {#each courses as course}
            <div class="border rounded-lg overflow-hidden transition-all hover:shadow-lg">
              <div class="p-6 pb-2">
                <div class="text-blue-600 mb-4 text-3xl">
                  {course.icon}
                </div>
                <h3 class="text-xl font-semibold mb-1">{course.title}</h3>
                <p class="text-gray-500 text-sm">{course.description}</p>
              </div>
              <div class="px-6 py-4">
                <div class="flex items-center gap-4 text-sm text-gray-500 mb-4">
                  <div class="flex items-center gap-1">
                    <span class="text-gray-400">📚</span>
                    <span>{course.lessons} lessons</span>
                  </div>
                  <div class="flex items-center gap-1">
                    <span class="text-gray-400">⏱️</span>
                    <span>{course.duration}</span>
                  </div>
                </div>
                <span class="inline-block px-2 py-1 text-xs font-medium rounded-full 
                  {course.level === 'Beginner' ? 'bg-green-100 text-green-800' : 
                   course.level === 'Intermediate' ? 'bg-blue-100 text-blue-800' : 
                   'bg-purple-100 text-purple-800'}">
                  {course.level}
                </span>
              </div>
              <div class="px-6 pb-6 pt-2 border-t bg-gray-50">
                <a href={`/courses/${course.title.toLowerCase().replace(/\s+/g, '-')}`} class="block w-full py-2 text-center border border-gray-300 rounded-md hover:bg-gray-100 transition-colors">
                  View Course
                </a>
              </div>
            </div>
          {/each}
        </div>
        <div class="flex justify-center mt-12">
          <a href="/courses" class="px-6 py-3 text-center font-medium bg-blue-600 text-white rounded-full hover:bg-blue-700 transition-colors">
            View All Courses
          </a>
        </div>
      </div>
    </section>
    
    <!-- Stats Section -->
    <section class="py-16 bg-slate-950 text-white">
      <div class="container mx-auto px-4 md:px-6">
        <div class="flex flex-col items-center justify-center space-y-4 text-center mb-12">
          <span class="px-3 py-1 text-sm bg-blue-900/50 text-blue-300 rounded-full">Our Impact</span>
          <h2 class="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl">Join Our Growing Community</h2>
          <p class="max-w-[700px] text-slate-300 md:text-xl">
            Thousands of students have launched their tech careers with Verinzo
          </p>
        </div>
        <div class="grid grid-cols-2 md:grid-cols-4 gap-4 md:gap-8">
          <div class="bg-slate-900 border border-slate-800 rounded-lg p-6 flex flex-col items-center justify-center text-center">
            <div class="text-4xl md:text-5xl font-bold text-blue-500 mb-2">50K+</div>
            <p class="text-slate-300">Active Students</p>
          </div>
          <div class="bg-slate-900 border border-slate-800 rounded-lg p-6 flex flex-col items-center justify-center text-center">
            <div class="text-4xl md:text-5xl font-bold text-blue-500 mb-2">200+</div>
            <p class="text-slate-300">Coding Projects</p>
          </div>
          <div class="bg-slate-900 border border-slate-800 rounded-lg p-6 flex flex-col items-center justify-center text-center">
            <div class="text-4xl md:text-5xl font-bold text-blue-500 mb-2">95%</div>
            <p class="text-slate-300">Completion Rate</p>
          </div>
          <div class="bg-slate-900 border border-slate-800 rounded-lg p-6 flex flex-col items-center justify-center text-center">
            <div class="text-4xl md:text-5xl font-bold text-blue-500 mb-2">12K+</div>
            <p class="text-slate-300">Career Transitions</p>
          </div>
        </div>
      </div>
    </section>
    
    <!-- How It Works Section -->
    <section class="py-16 bg-white dark:bg-slate-950">
      <div class="container mx-auto px-4 md:px-6">
        <div class="flex flex-col items-center justify-center space-y-4 text-center mb-12">
          <span class="px-3 py-1 text-sm border border-gray-200 rounded-full">Process</span>
          <h2 class="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl">How Verinzo Works</h2>
          <p class="max-w-[700px] text-gray-500 md:text-xl">
            Our proven learning methodology helps you master coding skills through practice
          </p>
        </div>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mt-8">
          <div class="border-none shadow-lg rounded-lg">
            <div class="p-6 pb-2">
              <div class="w-12 h-12 rounded-full bg-blue-100 flex items-center justify-center mb-4">
                <span class="text-blue-600 text-xl">💻</span>
              </div>
              <h3 class="text-xl font-semibold">Learn</h3>
            </div>
            <div class="px-6 pb-6">
              <p class="text-gray-500">
                Study core concepts through interactive lessons, videos, and documentation
              </p>
            </div>
          </div>
          <div class="border-none shadow-lg rounded-lg">
            <div class="p-6 pb-2">
              <div class="w-12 h-12 rounded-full bg-blue-100 flex items-center justify-center mb-4">
                <span class="text-blue-600 text-xl">🛠️</span>
              </div>
              <h3 class="text-xl font-semibold">Build</h3>
            </div>
            <div class="px-6 pb-6">
              <p class="text-gray-500">
                Apply your knowledge by building real projects that reinforce your skills
              </p>
            </div>
          </div>
          <div class="border-none shadow-lg rounded-lg">
            <div class="p-6 pb-2">
              <div class="w-12 h-12 rounded-full bg-blue-100 flex items-center justify-center mb-4">
                <span class="text-blue-600 text-xl">👥</span>
              </div>
              <h3 class="text-xl font-semibold">Connect</h3>
            </div>
            <div class="px-6 pb-6">
              <p class="text-gray-500">
                Join our community to get feedback, collaborate, and grow with other learners
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Testimonials Section -->
    <section class="py-16 bg-slate-50 dark:bg-slate-900">
      <div class="container mx-auto px-4 md:px-6">
        <div class="flex flex-col items-center justify-center space-y-4 text-center mb-12">
          <span class="px-3 py-1 text-sm border border-gray-200 rounded-full">Testimonials</span>
          <h2 class="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl">Success Stories</h2>
          <p class="max-w-[700px] text-gray-500 md:text-xl">
            Hear from our students who have transformed their careers through Verinzo
          </p>
        </div>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {#each testimonials as testimonial}
            <div class="border rounded-lg h-full">
              <div class="p-6">
                <div class="flex gap-1 mb-4">
                  {#each Array(5) as _, i}
                    <span class={i < testimonial.rating ? "text-yellow-500" : "text-gray-300"}>
                      {i < testimonial.rating ? "★" : "☆"}
                    </span>
                  {/each}
                </div>
                <p class="italic mb-6">"{testimonial.quote}"</p>
              </div>
              <div class="p-6 pt-0">
                <div class="flex items-center gap-4">
                  <div class="w-10 h-10 rounded-full overflow-hidden">
                    <img src={testimonial.image || "/placeholder.svg"} alt={testimonial.name} class="w-full h-full object-cover" />
                  </div>
                  <div>
                    <p class="font-medium">{testimonial.name}</p>
                    <p class="text-sm text-gray-500">{testimonial.role}</p>
                  </div>
                </div>
              </div>
            </div>
          {/each}
        </div>
      </div>
    </section>
    
    <!-- CTA Section -->
    <section class="py-20 bg-blue-600 text-white">
      <div class="container mx-auto px-4 md:px-6">
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-8 items-center">
          <div>
            <h2 class="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl mb-4">
              Start Your Coding Journey Today
            </h2>
            <p class="text-blue-100 md:text-xl mb-6 max-w-[600px]">
              Join thousands of students who have successfully launched their tech careers with Verinzo's project-based curriculum.
            </p>
            <div class="flex flex-col sm:flex-row gap-4">
              <a href="/signup" class="px-6 py-3 text-center font-medium bg-white text-blue-600 rounded-full hover:bg-blue-50 transition-colors">
                Get Started for Free
              </a>
              <a href="/curriculum" class="px-6 py-3 text-center font-medium border border-white/20 rounded-full hover:bg-white/10 transition-colors">
                View Curriculum
              </a>
            </div>
          </div>
          <div class="relative h-[400px] rounded-lg overflow-hidden">
            <img 
              src="https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80" 
              alt="Students coding" 
              class="w-full h-full object-cover"
            />
          </div>
        </div>
      </div>
    </section>
  </main>

  <!-- Footer -->
  <footer class="bg-slate-950 text-slate-200">
    <div class="container mx-auto px-4 md:px-6 py-16">
      <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
        <div class="md:col-span-1">
          <a href="/" class="inline-block mb-6">
            <span class="font-bold text-2xl bg-clip-text text-transparent bg-gradient-to-r from-blue-500 to-blue-300">
              Verinzo
            </span>
          </a>
          <p class="text-slate-400 mb-6">
            Learn to code through project-based curriculum. Free and open source.
          </p>
          <div class="flex gap-4">
            <a href="#" class="p-2 rounded-full text-slate-400 hover:text-blue-500 hover:bg-slate-900">
              <span class="text-xl">𝕏</span>
              <span class="sr-only">Twitter</span>
            </a>
            <a href="#" class="p-2 rounded-full text-slate-400 hover:text-blue-500 hover:bg-slate-900">
              <span class="text-xl">🐙</span>
              <span class="sr-only">GitHub</span>
            </a>
            <a href="#" class="p-2 rounded-full text-slate-400 hover:text-blue-500 hover:bg-slate-900">
              <span class="text-xl">🔗</span>
              <span class="sr-only">LinkedIn</span>
            </a>
            <a href="#" class="p-2 rounded-full text-slate-400 hover:text-blue-500 hover:bg-slate-900">
              <span class="text-xl">📘</span>
              <span class="sr-only">Facebook</span>
            </a>
            <a href="#" class="p-2 rounded-full text-slate-400 hover:text-blue-500 hover:bg-slate-900">
              <span class="text-xl">📷</span>
              <span class="sr-only">Instagram</span>
            </a>
          </div>
        </div>
        <div>
          <h3 class="font-medium text-lg mb-4">Learn</h3>
          <ul class="space-y-3">
            <li>
              <a href="/courses" class="text-slate-400 hover:text-blue-500 transition-colors">
                Courses
              </a>
            </li>
            <li>
              <a href="/curriculum" class="text-slate-400 hover:text-blue-500 transition-colors">
                Curriculum
              </a>
            </li>
            <li>
              <a href="/projects" class="text-slate-400 hover:text-blue-500 transition-colors">
                Projects
              </a>
            </li>
            <li>
              <a href="/tutorials" class="text-slate-400 hover:text-blue-500 transition-colors">
                Tutorials
              </a>
            </li>
          </ul>
        </div>
        <div>
          <h3 class="font-medium text-lg mb-4">Community</h3>
          <ul class="space-y-3">
            <li>
              <a href="/discord" class="text-slate-400 hover:text-blue-500 transition-colors">
                Discord
              </a>
            </li>
            <li>
              <a href="/events" class="text-slate-400 hover:text-blue-500 transition-colors">
                Events
              </a>
            </li>
            <li>
              <a href="/forum" class="text-slate-400 hover:text-blue-500 transition-colors">
                Forum
              </a>
            </li>
            <li>
              <a href="/contribute" class="text-slate-400 hover:text-blue-500 transition-colors">
                Contribute
              </a>
            </li>
          </ul>
        </div>
        <div>
          <h3 class="font-medium text-lg mb-4">Stay Updated</h3>
          <p class="text-slate-400 mb-4">
            Subscribe to our newsletter for the latest updates and resources.
          </p>
          <form class="space-y-2">
            <input 
              type="email" 
              placeholder="Your email address" 
              class="w-full px-4 py-2 bg-slate-900 border border-slate-800 text-white rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
            <button type="submit" class="w-full px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700 transition-colors">
              Subscribe
            </button>
          </form>
        </div>
      </div>
      <div class="border-t border-slate-800 mt-12 pt-8 flex flex-col md:flex-row justify-between items-center">
        <p class="text-slate-400 text-sm">
          &copy; {new Date().getFullYear()} Verinzo. All rights reserved.
        </p>
        <div class="flex gap-6 mt-4 md:mt-0">
          <a href="/privacy" class="text-slate-400 hover:text-blue-500 text-sm transition-colors">
            Privacy Policy
          </a>
          <a href="/terms" class="text-slate-400 hover:text-blue-500 text-sm transition-colors">
            Terms of Service
          </a>
          <a href="/cookies" class="text-slate-400 hover:text-blue-500 text-sm transition-colors">
            Cookie Policy
          </a>
        </div>
      </div>
    </div>
  </footer>
</div>

<style>
  @keyframes pulse {
    0%, 100% {
      opacity: 0.2;
    }
    50% {
      opacity: 0.8;
    }
  }

  .typewriter {
    overflow: hidden;
    border-right: 0.15em solid rgba(0, 255, 0, 0.75);
    white-space: nowrap;
    margin: 0 auto;
    letter-spacing: 0.15em;
    animation: 
      typing 3.5s steps(40, end),
      blink-caret 0.75s step-end infinite;
  }

  @keyframes typing {
    from { width: 0 }
    to { width: 100% }
  }

  @keyframes blink-caret {
    from, to { border-color: transparent }
    50% { border-color: rgba(0, 255, 0, 0.75) }
  }
</style>
