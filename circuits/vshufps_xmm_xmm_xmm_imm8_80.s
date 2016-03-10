  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vbroadcastsd %xmm2, %ymm0                       #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm   
  vbroadcastss %xmm9, %ymm11                      #  3     0xa   5      OPC=vbroadcastss_ymm_xmm   
  vmovss %xmm0, %xmm11, %xmm15                    #  4     0xf   4      OPC=vmovss_xmm_xmm_xmm     
  vunpcklps %xmm15, %xmm15, %xmm1                 #  5     0x13  5      OPC=vunpcklps_xmm_xmm_xmm  
  retq                                            #  6     0x18  1      OPC=retq                   
                                                                                                   
.size target, .-target
