  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovd %ebx, %xmm4               #  1     0     4      OPC=vmovd_xmm_r32          
  vpbroadcastd %xmm2, %xmm0       #  2     0x4   5      OPC=vpbroadcastd_xmm_xmm   
  vunpcklps %xmm4, %xmm0, %xmm15  #  3     0x9   4      OPC=vunpcklps_xmm_xmm_xmm  
  vmaxsd %xmm15, %xmm2, %xmm1     #  4     0xd   5      OPC=vmaxsd_xmm_xmm_xmm     
  movsd %xmm15, %xmm1             #  5     0x12  5      OPC=movsd_xmm_xmm          
  retq                            #  6     0x17  1      OPC=retq                   
                                                                                   
.size target, .-target
