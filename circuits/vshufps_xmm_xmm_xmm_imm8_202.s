  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovsldup %xmm2, %xmm13         #  1     0     4      OPC=vmovsldup_xmm_xmm      
  vbroadcastss %xmm3, %ymm10      #  2     0x4   5      OPC=vbroadcastss_ymm_xmm   
  vunpckhps %xmm3, %xmm10, %xmm9  #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm  
  vrsqrtss %xmm13, %xmm13, %xmm1  #  4     0xd   5      OPC=vrsqrtss_xmm_xmm_xmm   
  unpckhpd %xmm9, %xmm1           #  5     0x12  5      OPC=unpckhpd_xmm_xmm       
  retq                            #  6     0x17  1      OPC=retq                   
                                                                                   
.size target, .-target
