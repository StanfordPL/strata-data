  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode             
.target:              #        0    0      OPC=<label>        
  setae %r13b         #  1     0    4      OPC=setae_r8       
  movsbl %r13b, %ebx  #  2     0x4  4      OPC=movsbl_r32_r8  
  retq                #  3     0x8  1      OPC=retq           
                                                              
.size target, .-target
