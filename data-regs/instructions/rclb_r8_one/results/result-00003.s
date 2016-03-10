  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movsbq %bl, %r8    #  1     0    4      OPC=movsbq_r64_r8   
  movslq %r8d, %rbx  #  2     0x4  3      OPC=movslq_r64_r32  
  xchgl %r8d, %ebx   #  3     0x7  3      OPC=xchgl_r32_r32   
  adcb %bl, %bl      #  4     0xa  2      OPC=adcb_r8_r8      
  retq               #  5     0xc  1      OPC=retq            
                                                              
.size target, .-target
