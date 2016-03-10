  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovaps %xmm2, %xmm15        #  1     0     4      OPC=vmovaps_xmm_xmm     
  vmovd %ebx, %xmm10           #  2     0x4   4      OPC=vmovd_xmm_r32       
  movddup %xmm10, %xmm2        #  3     0x8   5      OPC=movddup_xmm_xmm     
  vmovss %xmm2, %xmm15, %xmm1  #  4     0xd   4      OPC=vmovss_xmm_xmm_xmm  
  retq                         #  5     0x11  1      OPC=retq                
                                                                             
.size target, .-target
