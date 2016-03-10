  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  setnge %bl               #  1     0    3      OPC=setnge_r8    
  callq .read_zf_into_rcx  #  2     0x3  5      OPC=callq_label  
  xaddb %cl, %bl           #  3     0x8  3      OPC=xaddb_r8_r8  
  setnp %bl                #  4     0xb  3      OPC=setnp_r8     
  retq                     #  5     0xe  1      OPC=retq         
                                                                 
.size target, .-target
