  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  setng %ch                #  1     0    3      OPC=setng_rh     
  addb %ch, %ch            #  2     0x3  2      OPC=addb_rh_rh   
  callq .read_pf_into_rbx  #  3     0x5  5      OPC=callq_label  
  retq                     #  4     0xa  1      OPC=retq         
                                                                 
.size target, .-target
