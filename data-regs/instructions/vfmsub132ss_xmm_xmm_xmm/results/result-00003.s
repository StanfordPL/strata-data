  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vbroadcastss %xmm3, %ymm4                       #  1     0     5      OPC=vbroadcastss_ymm_xmm     
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label              
  vmovsldup %xmm3, %xmm1                          #  3     0xa   4      OPC=vmovsldup_xmm_xmm        
  vfmsub132ps %xmm4, %xmm2, %xmm8                 #  4     0xe   5      OPC=vfmsub132ps_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label              
  retq                                            #  6     0x18  1      OPC=retq                     
                                                                                                     
.size target, .-target
