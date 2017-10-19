# CHAOS
From the CHAOS comes everything.


<pre>
  
  How to and What to do:

  ## CLONE CHAOS

  ## When launched CHAOS (fiat.sh)
  (to do :implement this as automation) 
  Will deploy all the projects with all their specs (or just the selected project with the selected spec...)

    ### For example
    Install Pluto (demo) will 
    Raise all the dockers with the command
      
      ```docker-compose -f compose/pluto.yaml -p pluto up -d```


      This will trigger the also the Pluto container that will start its setup thanks to the command 
      
      ```./CHAOS/stack/start.sh```

        That will check for the fingerprint of the installation of dependencies (to avoid to loop the installation every time you launch the container) 

          If missing will install all packages required and create a fingerprint file 
          (date-stamp as content and few more environment vars)

        Then will launch the instance service (infer_service.py)


  ## Seems easy right?
  Because it is. This intend to simplify a deployment for a CI-less but continuous development environment.
  And prepare the product up to a staging level (the production level will not be so dynamic in its build/provision/deployment because you probably want to avoid dependencies/packages update issues etc.. )

  ## Pending:

  SSH key to access to Private repositories
  SSH key interaction with github and dockerhub.


  Implement a cron job to push&clean everything in the "kosmo" folders


  Should be able to work from your local machine to deploy on the designed server
  (Precursor of K8s)
  SSH key to deploy to chosen servers
  Config & routines standardization for deployment


  Add time stamp in messages

</pre>