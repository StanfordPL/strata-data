  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  movd %ebx, %xmm3                #  1     0     4      OPC=movd_xmm_r32           
  vbroadcastsd %xmm1, %ymm13      #  2     0x4   5      OPC=vbroadcastsd_ymm_xmm   
  vmovlhps %xmm1, %xmm13, %xmm11  #  3     0x9   4      OPC=vmovlhps_xmm_xmm_xmm   
  vunpcklps %xmm3, %xmm11, %xmm0  #  4     0xd   4      OPC=vunpcklps_xmm_xmm_xmm  
  movsd %xmm0, %xmm1              #  5     0x11  4      OPC=movsd_xmm_xmm          
  retq                            #  6     0x15  1      OPC=retq                   
                                                                                   
.size target, .-target
