  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP   Bytes  Opcode               
.target:                 #        0     0      OPC=<label>          
  vmovd %ecx, %xmm13     #  1     0     4      OPC=vmovd_xmm_r32    
  vmovupd %xmm13, %xmm8  #  2     0x4   5      OPC=vmovupd_xmm_xmm  
  movq %xmm8, %rcx       #  3     0x9   5      OPC=movq_r64_xmm     
  cmovel %ecx, %ebx      #  4     0xe   3      OPC=cmovel_r32_r32   
  retq                   #  5     0x11  1      OPC=retq             
                                                                    
.size target, .-target
