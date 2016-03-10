  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vmovd %ebx, %xmm4                               #  1     0     4      OPC=vmovd_xmm_r32          
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label            
  vpbroadcastd %xmm10, %ymm14                     #  3     0x9   5      OPC=vpbroadcastd_ymm_xmm   
  vbroadcastss %xmm4, %xmm15                      #  4     0xe   5      OPC=vbroadcastss_xmm_xmm   
  vunpckhps %ymm15, %ymm14, %ymm8                 #  5     0x13  5      OPC=vunpckhps_ymm_ymm_ymm  
  movlhps %xmm8, %xmm1                            #  6     0x18  4      OPC=movlhps_xmm_xmm        
  retq                                            #  7     0x1c  1      OPC=retq                   
                                                                                                   
.size target, .-target
