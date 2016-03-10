  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xchgw %ax, %bx    #  1     0    2      OPC=xchgw_r16_ax   
  xchgl %eax, %ebx  #  2     0x2  2      OPC=xchgl_r32_r32  
  xchgw %ax, %bx    #  3     0x4  3      OPC=xchgw_r16_r16  
  retq              #  4     0x7  1      OPC=retq           
                                                            
.size target, .-target
