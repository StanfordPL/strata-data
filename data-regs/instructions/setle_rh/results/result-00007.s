  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_zf_into_rbx  #  1     0    5      OPC=callq_label  
  setnge %ah               #  2     0x5  3      OPC=setnge_rh    
  xaddb %ah, %bl           #  3     0x8  3      OPC=xaddb_r8_rh  
  setnp %ah                #  4     0xb  3      OPC=setnp_rh     
  retq                     #  5     0xe  1      OPC=retq         
                                                                 
.size target, .-target
