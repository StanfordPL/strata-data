  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vmovddup %xmm2, %xmm15                          #  1     0     4      OPC=vmovddup_xmm_xmm       
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label            
  vbroadcastss %xmm11, %ymm6                      #  3     0x9   5      OPC=vbroadcastss_ymm_xmm   
  vunpckhps %xmm2, %xmm15, %xmm5                  #  4     0xe   4      OPC=vunpckhps_xmm_xmm_xmm  
  vmaxpd %xmm5, %xmm5, %xmm4                      #  5     0x12  4      OPC=vmaxpd_xmm_xmm_xmm     
  unpcklpd %xmm4, %xmm1                           #  6     0x16  4      OPC=unpcklpd_xmm_xmm       
  movhlps %xmm6, %xmm1                            #  7     0x1a  3      OPC=movhlps_xmm_xmm        
  retq                                            #  8     0x1d  1      OPC=retq                   
                                                                                                   
.size target, .-target
