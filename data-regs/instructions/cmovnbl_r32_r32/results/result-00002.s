  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  vmovd %ecx, %xmm7   #  1     0    4      OPC=vmovd_xmm_r32    
  vmovq %xmm7, %rcx   #  2     0x4  5      OPC=vmovq_r64_xmm    
  cmovael %ecx, %ebx  #  3     0x9  3      OPC=cmovael_r32_r32  
  retq                #  4     0xc  1      OPC=retq             
                                                                
.size target, .-target
