  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  setnbe %al               #  1     0    3      OPC=setnbe_r8    
  xaddb %al, %al           #  2     0x3  3      OPC=xaddb_r8_r8  
  callq .read_zf_into_rbx  #  3     0x6  5      OPC=callq_label  
  retq                     #  4     0xb  1      OPC=retq         
                                                                 
.size target, .-target
