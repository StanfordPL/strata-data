  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                        
.target:                               #        0     0      OPC=<label>                   
  vbroadcastsd %xmm2, %ymm14           #  1     0     5      OPC=vbroadcastsd_ymm_xmm      
  vbroadcastss %xmm2, %xmm6            #  2     0x5   5      OPC=vbroadcastss_xmm_xmm      
  vunpcklps %xmm6, %xmm14, %xmm10      #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm     
  vfnmadd132ss %xmm10, %xmm10, %xmm10  #  4     0xe   5      OPC=vfnmadd132ss_xmm_xmm_xmm  
  vpunpckhqdq %xmm10, %xmm2, %xmm1     #  5     0x13  5      OPC=vpunpckhqdq_xmm_xmm_xmm   
  retq                                 #  6     0x18  1      OPC=retq                      
                                                                                           
.size target, .-target
