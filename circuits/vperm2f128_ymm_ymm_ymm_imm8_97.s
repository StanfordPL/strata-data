  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm12_xmm13            #  1     0     5      OPC=callq_label         
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label         
  vpand %xmm3, %xmm3, %xmm10                      #  3     0xa   4      OPC=vpand_xmm_xmm_xmm   
  callq .move_128_256_xmm10_xmm11_ymm2            #  4     0xe   5      OPC=callq_label         
  vmaxps %xmm13, %xmm13, %xmm10                   #  5     0x13  5      OPC=vmaxps_xmm_xmm_xmm  
  vmovupd %xmm2, %xmm11                           #  6     0x18  4      OPC=vmovupd_xmm_xmm     
  callq .move_128_256_xmm10_xmm11_ymm1            #  7     0x1c  5      OPC=callq_label         
  retq                                            #  8     0x21  1      OPC=retq                
                                                                                                
.size target, .-target
