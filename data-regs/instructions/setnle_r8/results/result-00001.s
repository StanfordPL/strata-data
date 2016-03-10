  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  setng %r15b              #  1     0    4      OPC=setng_r8     
  xaddb %r15b, %r15b       #  2     0x4  4      OPC=xaddb_r8_r8  
  callq .read_zf_into_rbx  #  3     0x8  5      OPC=callq_label  
  retq                     #  4     0xd  1      OPC=retq         
                                                                 
.size target, .-target
