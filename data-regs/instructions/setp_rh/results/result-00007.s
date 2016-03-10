  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  setpe %ah                #  1     0    3      OPC=setpe_rh     
  callq .read_pf_into_rcx  #  2     0x3  5      OPC=callq_label  
  addb %ch, %ah            #  3     0x8  2      OPC=addb_rh_rh   
  retq                     #  4     0xa  1      OPC=retq         
                                                                 
.size target, .-target
