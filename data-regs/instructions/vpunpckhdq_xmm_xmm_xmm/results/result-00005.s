  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vxorpd %xmm2, %xmm2, %xmm1      #  1     0     4      OPC=vxorpd_xmm_xmm_xmm     
  vrsqrtss %xmm1, %xmm1, %xmm7    #  2     0x4   4      OPC=vrsqrtss_xmm_xmm_xmm   
  vpbroadcastb %xmm7, %ymm14      #  3     0x8   5      OPC=vpbroadcastb_ymm_xmm   
  vunpckhps %xmm3, %xmm2, %xmm11  #  4     0xd   4      OPC=vunpckhps_xmm_xmm_xmm  
  vorpd %xmm14, %xmm11, %xmm1     #  5     0x11  5      OPC=vorpd_xmm_xmm_xmm      
  retq                            #  6     0x16  1      OPC=retq                   
                                                                                   
.size target, .-target
