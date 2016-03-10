  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  cltq              #  1     0    2      OPC=cltq           
  xchgl %ebx, %eax  #  2     0x2  1      OPC=xchgl_eax_r32  
  retq              #  3     0x3  1      OPC=retq           
                                                            
.size target, .-target
