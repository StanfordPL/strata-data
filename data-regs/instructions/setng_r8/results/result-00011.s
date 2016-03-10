  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  setle %ch                #  1     0    3      OPC=setle_rh     
  callq .read_of_into_rbx  #  2     0x3  5      OPC=callq_label  
  xaddb %bl, %ch           #  3     0x8  3      OPC=xaddb_rh_r8  
  retq                     #  4     0xb  1      OPC=retq         
                                                                 
.size target, .-target
