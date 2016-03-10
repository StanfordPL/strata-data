  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_of_into_rbx  #  1     0    5      OPC=callq_label  
  setng %r13b              #  2     0x5  4      OPC=setng_r8     
  xchgb %bl, %r13b         #  3     0x9  3      OPC=xchgb_r8_r8  
  retq                     #  4     0xc  1      OPC=retq         
                                                                 
.size target, .-target
