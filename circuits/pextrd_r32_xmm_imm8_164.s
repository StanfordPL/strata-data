  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  movddup %xmm1, %xmm8         #  1     0     5      OPC=movddup_xmm_xmm     
  vmaxsd %xmm1, %xmm1, %xmm15  #  2     0x5   4      OPC=vmaxsd_xmm_xmm_xmm  
  unpcklps %xmm15, %xmm8       #  3     0x9   4      OPC=unpcklps_xmm_xmm    
  vmovd %xmm8, %ebx            #  4     0xd   4      OPC=vmovd_r32_xmm       
  retq                         #  5     0x11  1      OPC=retq                
                                                                             
.size target, .-target
