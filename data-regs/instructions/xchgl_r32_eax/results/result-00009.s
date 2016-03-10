  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xchgl %ebx, %eax  #  1     0    1      OPC=xchgl_eax_r32  
  retq              #  2     0x1  1      OPC=retq           
                                                            
.size target, .-target
