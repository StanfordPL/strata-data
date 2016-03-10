  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  movsldup %xmm1, %xmm1           #  1     0     4      OPC=movsldup_xmm_xmm       
  vbroadcastss %xmm2, %xmm0       #  2     0x4   5      OPC=vbroadcastss_xmm_xmm   
  vunpckhps %xmm0, %xmm2, %xmm14  #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm  
  unpcklpd %xmm14, %xmm1          #  4     0xd   5      OPC=unpcklpd_xmm_xmm       
  minps %xmm1, %xmm1              #  5     0x12  3      OPC=minps_xmm_xmm          
  retq                            #  6     0x15  1      OPC=retq                   
                                                                                   
.size target, .-target
