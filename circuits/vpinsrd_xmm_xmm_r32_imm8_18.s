  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovshdup %xmm2, %xmm12         #  1     0     4      OPC=vmovshdup_xmm_xmm      
  vmovd %ebx, %xmm5               #  2     0x4   4      OPC=vmovd_xmm_r32          
  vpbroadcastd %xmm5, %xmm4       #  3     0x8   5      OPC=vpbroadcastd_xmm_xmm   
  vunpckhps %xmm12, %xmm4, %xmm1  #  4     0xd   5      OPC=vunpckhps_xmm_xmm_xmm  
  movsd %xmm2, %xmm1              #  5     0x12  4      OPC=movsd_xmm_xmm          
  retq                            #  6     0x16  1      OPC=retq                   
                                                                                   
.size target, .-target
