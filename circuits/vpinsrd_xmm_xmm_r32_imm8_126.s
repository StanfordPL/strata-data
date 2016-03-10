  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  movd %ebx, %xmm5                #  1     0     4      OPC=movd_xmm_r32           
  vbroadcastss %xmm5, %xmm4       #  2     0x4   5      OPC=vbroadcastss_xmm_xmm   
  vpbroadcastd %xmm4, %ymm15      #  3     0x9   5      OPC=vpbroadcastd_ymm_xmm   
  vunpckhps %xmm2, %xmm15, %xmm3  #  4     0xe   4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovsd %xmm2, %xmm3, %xmm1      #  5     0x12  4      OPC=vmovsd_xmm_xmm_xmm     
  retq                            #  6     0x16  1      OPC=retq                   
                                                                                   
.size target, .-target
