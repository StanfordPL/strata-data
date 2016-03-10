  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbq %bl, %rbx  #  1     0    4      OPC=movzbq_r64_r8  
  andb %ah, %bl     #  2     0x4  2      OPC=andb_r8_rh     
  setnae %ah        #  3     0x6  3      OPC=setnae_rh      
  addb %bl, %ah     #  4     0x9  2      OPC=addb_rh_r8     
  retq              #  5     0xb  1      OPC=retq           
                                                            
.size target, .-target
