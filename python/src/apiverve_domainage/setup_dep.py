from setuptools import setup, find_packages

setup(
    name='apiverve_domainage',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Domain Age returns when a domain was first registered and how old it is in days, months and years, with a readable age, an age bracket and a newly-registered flag. Paid plans add the expiration date and the last registry update.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/domainage?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
