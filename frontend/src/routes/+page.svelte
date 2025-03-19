<script>
	import TypewriterCode from '$lib/components/TypewriterCode.svelte';

	// Active section for mobile menu
	let isMenuOpen = false;

	// Sample data for courses
	const courses = [
		{
			title: 'Web Development Fundamentals',
			description: 'Learn HTML, CSS, JavaScript and build your first websites',
			icon: '🌐',
			lessons: 42,
			duration: '3 months',
			level: 'Beginner'
		},
		{
			title: 'Full-Stack JavaScript',
			description: 'Master Node.js, Express, MongoDB and React to build complete applications',
			icon: '⚛️',
			lessons: 78,
			duration: '5 months',
			level: 'Intermediate'
		},
		{
			title: 'Ruby on Rails',
			description: 'Build powerful web applications quickly with Ruby on Rails',
			icon: '💎',
			lessons: 56,
			duration: '4 months',
			level: 'Intermediate'
		},
		{
			title: 'Database Design & SQL',
			description: 'Learn database fundamentals, SQL, and data modeling',
			icon: '🗄️',
			lessons: 35,
			duration: '2 months',
			level: 'Beginner'
		},
		{
			title: 'DevOps & Deployment',
			description: 'Master CI/CD, Docker, and cloud deployment strategies',
			icon: '🚀',
			lessons: 48,
			duration: '3 months',
			level: 'Advanced'
		},
		{
			title: 'Open Source Contribution',
			description: 'Learn to contribute to open source projects and collaborate with others',
			icon: '👥',
			lessons: 28,
			duration: '2 months',
			level: 'Intermediate'
		}
	];

	// Sample data for features
	const features = [
		{
			title: 'Structured Curriculum',
			description:
				'Follow a carefully designed learning path that builds your skills progressively',
			icon: '📚',
			content:
				'Our curriculum is organized into modules that build upon each other, ensuring you develop a solid foundation before moving on to more advanced concepts.'
		},
		{
			title: 'Project-Based Learning',
			description: 'Learn by building real projects that reinforce your understanding',
			icon: '🛠️',
			content:
				"Each module includes practical projects that challenge you to apply what you've learned, helping you build a portfolio while mastering coding skills."
		},
		{
			title: 'Supportive Community',
			description: 'Join thousands of learners in our active Discord community',
			icon: '👥',
			content:
				"Get help when you're stuck, share your progress, and connect with fellow learners and mentors who are passionate about coding."
		},
		{
			title: 'Interactive Challenges',
			description: 'Test your knowledge with coding challenges and quizzes',
			icon: '⚡',
			content:
				'Reinforce your learning with interactive exercises that provide immediate feedback and help you identify areas for improvement.'
		},
		{
			title: 'Open Source',
			description: 'Our curriculum is open source and constantly improving',
			icon: '🔄',
			content:
				'Benefit from a curriculum that evolves with industry trends and best practices, with contributions from experienced developers.'
		},
		{
			title: 'Modern Tech Stack',
			description: 'Learn the most in-demand technologies used by top companies',
			icon: '💻',
			content:
				'Our curriculum focuses on technologies that are widely used in the industry, ensuring you develop skills that employers are looking for.'
		}
	];

	// Sample data for testimonials
	const testimonials = [
		{
			name: 'Alex Johnson',
			role: 'Frontend Developer at TechCorp',
			quote:
				'Verinzo completely changed my career trajectory. The project-based approach helped me build a portfolio that impressed employers, and I landed my dream job within 3 months of completing the curriculum.',
			rating: 5,
			image: 'https://randomuser.me/api/portraits/men/32.jpg'
		},
		{
			name: 'Sarah Chen',
			role: 'Full Stack Developer at StartupX',
			quote:
				'The community support at Verinzo is incredible. Whenever I got stuck, there was always someone willing to help. The curriculum is challenging but extremely rewarding.',
			rating: 5,
			image: 'https://randomuser.me/api/portraits/women/44.jpg'
		},
		{
			name: 'Michael Rodriguez',
			role: 'Software Engineer at BigTech',
			quote:
				"I tried several coding platforms before finding Verinzo. The structured approach and real-world projects made all the difference. I'm now earning twice what I made before.",
			rating: 5,
			image: 'https://randomuser.me/api/portraits/men/67.jpg'
		}
	];

	// Toggle mobile menu
	function toggleMenu() {
		isMenuOpen = !isMenuOpen;
	}
</script>

<div class="flex min-h-screen flex-col">
	<!-- Navigation -->
	<header
		class="bg-white/80/80 sticky top-0 z-50 w-full shadow-sm backdrop-blur-md transition-all duration-200"
	>
		<div class="container mx-auto flex h-16 items-center justify-between px-4 md:px-6">
			<a href="/" class="flex items-center gap-2">
				<span
					class="bg-gradient-to-r from-blue-600 to-blue-400 bg-clip-text text-2xl font-bold text-transparent"
				>
					Verinzo
				</span>
			</a>
			<nav class="hidden gap-6 md:flex">
				<a href="/courses" class="text-sm font-medium transition-colors hover:text-blue-600">
					Courses
				</a>
				<a href="/curriculum" class="text-sm font-medium transition-colors hover:text-blue-600">
					Curriculum
				</a>
				<a href="/community" class="text-sm font-medium transition-colors hover:text-blue-600">
					Community
				</a>
				<a href="/about" class="text-sm font-medium transition-colors hover:text-blue-600">
					About
				</a>
			</nav>
			<div class="hidden items-center gap-4 md:flex">
				<a
					href="/login"
					class="rounded-md px-4 py-2 text-sm font-medium transition-colors hover:bg-gray-100"
				>
					Log in
				</a>
				<a
					href="/signup"
					class="rounded-md bg-blue-600 px-4 py-2 text-sm font-medium text-white transition-colors hover:bg-blue-700"
				>
					Sign up
				</a>
			</div>
			<button
				on:click={toggleMenu}
				class="rounded-md p-2 hover:bg-gray-100 md:hidden"
				aria-label="Menu"
			>
				<span class="mb-1.5 block h-0.5 w-6 bg-gray-900"></span>
				<span class="mb-1.5 block h-0.5 w-6 bg-gray-900"></span>
				<span class="block h-0.5 w-6 bg-gray-900"></span>
			</button>
		</div>

		<!-- Mobile menu -->
		{#if isMenuOpen}
			<div class="border-t bg-white md:hidden">
				<div class="container mx-auto flex flex-col gap-4 px-4 py-4">
					<a href="/courses" class="text-lg font-medium transition-colors hover:text-blue-600">
						Courses
					</a>
					<a href="/curriculum" class="text-lg font-medium transition-colors hover:text-blue-600">
						Curriculum
					</a>
					<a href="/community" class="text-lg font-medium transition-colors hover:text-blue-600">
						Community
					</a>
					<a href="/about" class="text-lg font-medium transition-colors hover:text-blue-600">
						About
					</a>
					<div class="mt-4 flex flex-col gap-2">
						<a
							href="/login"
							class="w-full rounded-md border border-gray-300 px-4 py-2 text-center transition-colors hover:bg-gray-100"
						>
							Log in
						</a>
						<a
							href="/signup"
							class="w-full rounded-md bg-blue-600 px-4 py-2 text-center text-white transition-colors hover:bg-blue-700"
						>
							Sign up
						</a>
					</div>
				</div>
			</div>
		{/if}
	</header>

	<main class="flex-1">
		<!-- Hero Section -->
		<section class="relative overflow-hidden bg-slate-950 py-20 text-white md:py-28">
			<!-- Background gradient -->
			<div
				class="absolute inset-0 bg-gradient-to-br from-blue-600/20 via-slate-950 to-slate-950"
			></div>

			<!-- Animated code lines (decorative) -->
			<div class="absolute inset-0 opacity-10">
				{#each Array(20) as _, i}
					<div
						class="absolute h-px bg-gradient-to-r from-transparent via-blue-500/50 to-transparent"
						style="top: {Math.random() * 100}%; left: 0; right: 0; opacity: {Math.random() * 0.5 +
							0.25}; transform: translateY({Math.random() *
							10}px); animation: pulse {Math.random() * 5 + 5}s infinite"
					></div>
				{/each}
			</div>

			<div class="relative container mx-auto px-4 md:px-6">
				<div class="grid grid-cols-1 items-center gap-8 lg:grid-cols-2">
					<div class="flex flex-col space-y-6">
						<h1 class="text-4xl font-bold tracking-tighter sm:text-5xl md:text-6xl lg:text-7xl">
							Learn to <span class="text-blue-500">Code</span> by Building Real Projects
						</h1>
						<p class="max-w-[600px] text-xl text-slate-300">
							Verinzo provides a free, comprehensive curriculum to help you learn web development
							through hands-on projects and real-world applications.
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
						<div class="flex flex-col gap-4 pt-4 sm:flex-row">
							<a
								href="/get-started"
								class="rounded-full bg-blue-600 px-6 py-3 text-center font-medium text-white transition-colors hover:bg-blue-700"
							>
								Get Started
							</a>
							<a
								href="/curriculum"
								class="rounded-full border border-white/20 px-6 py-3 text-center font-medium transition-colors hover:bg-white/10"
							>
								View Curriculum
							</a>
						</div>
					</div>
					<div
						class="relative h-[400px] overflow-hidden rounded-lg border border-slate-800 shadow-2xl lg:h-[500px]"
					>
						<div class="absolute top-0 flex h-8 w-full items-center bg-slate-800 px-4">
							<div class="flex gap-2">
								<div class="h-3 w-3 rounded-full bg-red-500"></div>
								<div class="h-3 w-3 rounded-full bg-yellow-500"></div>
								<div class="h-3 w-3 rounded-full bg-green-500"></div>
							</div>
						</div>
						<div
							class="h-full overflow-hidden bg-slate-900 p-4 pt-8 font-mono text-sm text-green-400"
						>
							<TypewriterCode />
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- Features Section -->
		<section class="bg-white py-16">
			<div class="container mx-auto px-4 md:px-6">
				<div class="mb-12 flex flex-col items-center justify-center space-y-4 text-center">
					<span class="rounded-full border border-gray-200 px-3 py-1 text-sm">Features</span>
					<h2 class="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl">
						Why Choose Verinzo
					</h2>
					<p class="max-w-[700px] text-gray-500 md:text-xl">
						Our platform is designed to provide you with the best learning experience
					</p>
				</div>
				<div class="grid grid-cols-1 gap-6 md:grid-cols-2 lg:grid-cols-3">
					{#each features as feature}
						<div class="overflow-hidden rounded-lg border transition-all hover:shadow-lg">
							<div class="p-6 pb-2">
								<div class="mb-4 text-3xl text-blue-600">
									{feature.icon}
								</div>
								<h3 class="mb-1 text-xl font-semibold">{feature.title}</h3>
								<p class="mb-4 text-sm text-gray-500">{feature.description}</p>
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
		<section class="bg-slate-50 py-16">
			<div class="container mx-auto px-4 md:px-6">
				<div class="mb-12 flex flex-col items-center justify-center space-y-4 text-center">
					<span class="rounded-full bg-blue-100 px-3 py-1 text-sm text-blue-800"
						>Learning Paths</span
					>
					<h2 class="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl">
						Choose Your Path
					</h2>
					<p class="max-w-[700px] text-gray-500 md:text-xl">
						Structured learning paths to take you from beginner to professional developer
					</p>
				</div>
				<div class="grid grid-cols-1 gap-6 md:grid-cols-2 lg:grid-cols-3">
					{#each courses as course}
						<div class="overflow-hidden rounded-lg border transition-all hover:shadow-lg">
							<div class="p-6 pb-2">
								<div class="mb-4 text-3xl text-blue-600">
									{course.icon}
								</div>
								<h3 class="mb-1 text-xl font-semibold">{course.title}</h3>
								<p class="text-sm text-gray-500">{course.description}</p>
							</div>
							<div class="px-6 py-4">
								<div class="mb-4 flex items-center gap-4 text-sm text-gray-500">
									<div class="flex items-center gap-1">
										<span class="text-gray-400">📚</span>
										<span>{course.lessons} lessons</span>
									</div>
									<div class="flex items-center gap-1">
										<span class="text-gray-400">⏱️</span>
										<span>{course.duration}</span>
									</div>
								</div>
								<span
									class="inline-block rounded-full px-2 py-1 text-xs font-medium
                  {course.level === 'Beginner'
										? 'bg-green-100 text-green-800'
										: course.level === 'Intermediate'
											? 'bg-blue-100 text-blue-800'
											: 'bg-purple-100 text-purple-800'}"
								>
									{course.level}
								</span>
							</div>
							<div class="border-t bg-gray-50 px-6 pt-2 pb-6">
								<a
									href={`/courses/${course.title.toLowerCase().replace(/\s+/g, '-')}`}
									class="block w-full rounded-md border border-gray-300 py-2 text-center transition-colors hover:bg-gray-100"
								>
									View Course
								</a>
							</div>
						</div>
					{/each}
				</div>
				<div class="mt-12 flex justify-center">
					<a
						href="/courses"
						class="rounded-full bg-blue-600 px-6 py-3 text-center font-medium text-white transition-colors hover:bg-blue-700"
					>
						View All Courses
					</a>
				</div>
			</div>
		</section>

		<!-- Stats Section -->
		<section class="bg-slate-950 py-16 text-white">
			<div class="container mx-auto px-4 md:px-6">
				<div class="mb-12 flex flex-col items-center justify-center space-y-4 text-center">
					<span class="rounded-full bg-blue-900/50 px-3 py-1 text-sm text-blue-300">Our Impact</span
					>
					<h2 class="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl">
						Join Our Growing Community
					</h2>
					<p class="max-w-[700px] text-slate-300 md:text-xl">
						Thousands of students have launched their tech careers with Verinzo
					</p>
				</div>
				<div class="grid grid-cols-2 gap-4 md:grid-cols-4 md:gap-8">
					<div
						class="flex flex-col items-center justify-center rounded-lg border border-slate-800 bg-slate-900 p-6 text-center"
					>
						<div class="mb-2 text-4xl font-bold text-blue-500 md:text-5xl">50K+</div>
						<p class="text-slate-300">Active Students</p>
					</div>
					<div
						class="flex flex-col items-center justify-center rounded-lg border border-slate-800 bg-slate-900 p-6 text-center"
					>
						<div class="mb-2 text-4xl font-bold text-blue-500 md:text-5xl">200+</div>
						<p class="text-slate-300">Coding Projects</p>
					</div>
					<div
						class="flex flex-col items-center justify-center rounded-lg border border-slate-800 bg-slate-900 p-6 text-center"
					>
						<div class="mb-2 text-4xl font-bold text-blue-500 md:text-5xl">95%</div>
						<p class="text-slate-300">Completion Rate</p>
					</div>
					<div
						class="flex flex-col items-center justify-center rounded-lg border border-slate-800 bg-slate-900 p-6 text-center"
					>
						<div class="mb-2 text-4xl font-bold text-blue-500 md:text-5xl">12K+</div>
						<p class="text-slate-300">Career Transitions</p>
					</div>
				</div>
			</div>
		</section>

		<!-- How It Works Section -->
		<section class="bg-white py-16">
			<div class="container mx-auto px-4 md:px-6">
				<div class="mb-12 flex flex-col items-center justify-center space-y-4 text-center">
					<span class="rounded-full border border-gray-200 px-3 py-1 text-sm">Process</span>
					<h2 class="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl">
						How Verinzo Works
					</h2>
					<p class="max-w-[700px] text-gray-500 md:text-xl">
						Our proven learning methodology helps you master coding skills through practice
					</p>
				</div>
				<div class="mt-8 grid grid-cols-1 gap-8 md:grid-cols-3">
					<div class="rounded-lg border-none shadow-lg">
						<div class="p-6 pb-2">
							<div class="mb-4 flex h-12 w-12 items-center justify-center rounded-full bg-blue-100">
								<span class="text-xl text-blue-600">💻</span>
							</div>
							<h3 class="text-xl font-semibold">Learn</h3>
						</div>
						<div class="px-6 pb-6">
							<p class="text-gray-500">
								Study core concepts through interactive lessons, videos, and documentation
							</p>
						</div>
					</div>
					<div class="rounded-lg border-none shadow-lg">
						<div class="p-6 pb-2">
							<div class="mb-4 flex h-12 w-12 items-center justify-center rounded-full bg-blue-100">
								<span class="text-xl text-blue-600">🛠️</span>
							</div>
							<h3 class="text-xl font-semibold">Build</h3>
						</div>
						<div class="px-6 pb-6">
							<p class="text-gray-500">
								Apply your knowledge by building real projects that reinforce your skills
							</p>
						</div>
					</div>
					<div class="rounded-lg border-none shadow-lg">
						<div class="p-6 pb-2">
							<div class="mb-4 flex h-12 w-12 items-center justify-center rounded-full bg-blue-100">
								<span class="text-xl text-blue-600">👥</span>
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
		<section class="bg-slate-50 py-16">
			<div class="container mx-auto px-4 md:px-6">
				<div class="mb-12 flex flex-col items-center justify-center space-y-4 text-center">
					<span class="rounded-full border border-gray-200 px-3 py-1 text-sm">Testimonials</span>
					<h2 class="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl">
						Success Stories
					</h2>
					<p class="max-w-[700px] text-gray-500 md:text-xl">
						Hear from our students who have transformed their careers through Verinzo
					</p>
				</div>
				<div class="grid grid-cols-1 gap-6 md:grid-cols-2 lg:grid-cols-3">
					{#each testimonials as testimonial}
						<div class="h-full rounded-lg border">
							<div class="p-6">
								<div class="mb-4 flex gap-1">
									{#each Array(5) as _, i}
										<span class={i < testimonial.rating ? 'text-yellow-500' : 'text-gray-300'}>
											{i < testimonial.rating ? '★' : '☆'}
										</span>
									{/each}
								</div>
								<p class="mb-6 italic">"{testimonial.quote}"</p>
							</div>
							<div class="p-6 pt-0">
								<div class="flex items-center gap-4">
									<div class="h-10 w-10 overflow-hidden rounded-full">
										<img
											src={testimonial.image || '/placeholder.svg'}
											alt={testimonial.name}
											class="h-full w-full object-cover"
										/>
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
		<section class="bg-blue-600 py-20 text-white">
			<div class="container mx-auto px-4 md:px-6">
				<div class="grid grid-cols-1 items-center gap-8 lg:grid-cols-2">
					<div>
						<h2 class="mb-4 text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl">
							Start Your Coding Journey Today
						</h2>
						<p class="mb-6 max-w-[600px] text-blue-100 md:text-xl">
							Join thousands of students who have successfully launched their tech careers with
							Verinzo's project-based curriculum.
						</p>
						<div class="flex flex-col gap-4 sm:flex-row">
							<a
								href="/signup"
								class="rounded-full bg-white px-6 py-3 text-center font-medium text-blue-600 transition-colors hover:bg-blue-50"
							>
								Get Started for Free
							</a>
							<a
								href="/curriculum"
								class="rounded-full border border-white/20 px-6 py-3 text-center font-medium transition-colors hover:bg-white/10"
							>
								View Curriculum
							</a>
						</div>
					</div>
					<div class="relative h-[400px] overflow-hidden rounded-lg">
						<img
							src="https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80"
							alt="Students coding"
							class="h-full w-full object-cover"
						/>
					</div>
				</div>
			</div>
		</section>
	</main>

	<!-- Footer -->
	<footer class="bg-slate-950 text-slate-200">
		<div class="container mx-auto px-4 py-16 md:px-6">
			<div class="grid grid-cols-1 gap-8 md:grid-cols-4">
				<div class="md:col-span-1">
					<a href="/" class="mb-6 inline-block">
						<span
							class="bg-gradient-to-r from-blue-500 to-blue-300 bg-clip-text text-2xl font-bold text-transparent"
						>
							Verinzo
						</span>
					</a>
					<p class="mb-6 text-slate-400">
						Learn to code through project-based curriculum. Free and open source.
					</p>
					<div class="flex gap-4">
						<a
							href="#"
							class="rounded-full p-2 text-slate-400 hover:bg-slate-900 hover:text-blue-500"
						>
							<span class="text-xl">𝕏</span>
							<span class="sr-only">Twitter</span>
						</a>
						<a
							href="#"
							class="rounded-full p-2 text-slate-400 hover:bg-slate-900 hover:text-blue-500"
						>
							<span class="text-xl">🐙</span>
							<span class="sr-only">GitHub</span>
						</a>
						<a
							href="#"
							class="rounded-full p-2 text-slate-400 hover:bg-slate-900 hover:text-blue-500"
						>
							<span class="text-xl">🔗</span>
							<span class="sr-only">LinkedIn</span>
						</a>
						<a
							href="#"
							class="rounded-full p-2 text-slate-400 hover:bg-slate-900 hover:text-blue-500"
						>
							<span class="text-xl">📘</span>
							<span class="sr-only">Facebook</span>
						</a>
						<a
							href="#"
							class="rounded-full p-2 text-slate-400 hover:bg-slate-900 hover:text-blue-500"
						>
							<span class="text-xl">📷</span>
							<span class="sr-only">Instagram</span>
						</a>
					</div>
				</div>
				<div>
					<h3 class="mb-4 text-lg font-medium">Learn</h3>
					<ul class="space-y-3">
						<li>
							<a href="/courses" class="text-slate-400 transition-colors hover:text-blue-500">
								Courses
							</a>
						</li>
						<li>
							<a href="/curriculum" class="text-slate-400 transition-colors hover:text-blue-500">
								Curriculum
							</a>
						</li>
						<li>
							<a href="/projects" class="text-slate-400 transition-colors hover:text-blue-500">
								Projects
							</a>
						</li>
						<li>
							<a href="/tutorials" class="text-slate-400 transition-colors hover:text-blue-500">
								Tutorials
							</a>
						</li>
					</ul>
				</div>
				<div>
					<h3 class="mb-4 text-lg font-medium">Community</h3>
					<ul class="space-y-3">
						<li>
							<a href="/discord" class="text-slate-400 transition-colors hover:text-blue-500">
								Discord
							</a>
						</li>
						<li>
							<a href="/events" class="text-slate-400 transition-colors hover:text-blue-500">
								Events
							</a>
						</li>
						<li>
							<a href="/forum" class="text-slate-400 transition-colors hover:text-blue-500">
								Forum
							</a>
						</li>
						<li>
							<a href="/contribute" class="text-slate-400 transition-colors hover:text-blue-500">
								Contribute
							</a>
						</li>
					</ul>
				</div>
				<div>
					<h3 class="mb-4 text-lg font-medium">Stay Updated</h3>
					<p class="mb-4 text-slate-400">
						Subscribe to our newsletter for the latest updates and resources.
					</p>
					<form class="space-y-2">
						<input
							type="email"
							placeholder="Your email address"
							class="w-full rounded-md border border-slate-800 bg-slate-900 px-4 py-2 text-white focus:ring-2 focus:ring-blue-500 focus:outline-none"
						/>
						<button
							type="submit"
							class="w-full rounded-md bg-blue-600 px-4 py-2 text-white transition-colors hover:bg-blue-700"
						>
							Subscribe
						</button>
					</form>
				</div>
			</div>
			<div
				class="mt-12 flex flex-col items-center justify-between border-t border-slate-800 pt-8 md:flex-row"
			>
				<p class="text-sm text-slate-400">
					&copy; {new Date().getFullYear()} Verinzo. All rights reserved.
				</p>
				<div class="mt-4 flex gap-6 md:mt-0">
					<a href="/privacy" class="text-sm text-slate-400 transition-colors hover:text-blue-500">
						Privacy Policy
					</a>
					<a href="/terms" class="text-sm text-slate-400 transition-colors hover:text-blue-500">
						Terms of Service
					</a>
					<a href="/cookies" class="text-sm text-slate-400 transition-colors hover:text-blue-500">
						Cookie Policy
					</a>
				</div>
			</div>
		</div>
	</footer>
</div>

<style>
	@keyframes pulse {
		0%,
		100% {
			opacity: 0.2;
		}
		50% {
			opacity: 0.8;
		}
	}
</style>
