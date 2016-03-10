  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vpmovsxdq %xmm2, %xmm7                          #  2     0x5   5      OPC=vpmovsxdq_xmm_xmm     
  vbroadcastss %xmm7, %ymm3                       #  3     0xa   5      OPC=vbroadcastss_ymm_xmm  
  unpckhps %xmm3, %xmm2                           #  4     0xf   3      OPC=unpckhps_xmm_xmm      
  vmovss %xmm9, %xmm2, %xmm1                      #  5     0x12  5      OPC=vmovss_xmm_xmm_xmm    
  retq                                            #  6     0x17  1      OPC=retq                  
                                                                                                  
.size target, .-target
