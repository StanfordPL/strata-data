  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP  Bytes  Opcode           
.target:                 #        0    0      OPC=<label>      
  setl %cl               #  1     0    3      OPC=setl_r8      
  callq .write_cl_to_zf  #  2     0x3  5      OPC=callq_label  
  setnz %ah              #  3     0x8  3      OPC=setnz_rh     
  retq                   #  4     0xb  1      OPC=retq         
                                                               
.size target, .-target
