  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP  Bytes  Opcode                 
.target:                 #        0    0      OPC=<label>            
  vmovmskps %xmm1, %ebx  #  1     0    4      OPC=vmovmskps_r32_xmm  
  xchgl %ebx, %ebx       #  2     0x4  2      OPC=xchgl_r32_r32      
  retq                   #  3     0x6  1      OPC=retq               
                                                                     
.size target, .-target
