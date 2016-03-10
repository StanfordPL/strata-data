  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP  Bytes  Opcode                 
.target:                 #        0    0      OPC=<label>            
  xorb %r10b, %r10b      #  1     0    3      OPC=xorb_r8_r8         
  movzbq %r10b, %rcx     #  2     0x3  4      OPC=movzbq_r64_r8      
  cvtsi2sdl %ecx, %xmm1  #  3     0x7  4      OPC=cvtsi2sdl_xmm_r32  
  retq                   #  4     0xb  1      OPC=retq               
                                                                     
.size target, .-target
