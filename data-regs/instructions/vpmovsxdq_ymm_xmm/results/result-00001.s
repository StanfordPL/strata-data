  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpckhpd %xmm2, %xmm2, %xmm10                  #  2     0x5   4      OPC=vunpckhpd_xmm_xmm_xmm  
  punpcklqdq %xmm11, %xmm2                        #  3     0x9   5      OPC=punpcklqdq_xmm_xmm     
  vpmovsxdq %xmm10, %xmm9                         #  4     0xe   5      OPC=vpmovsxdq_xmm_xmm      
  vpmovsxdq %xmm2, %xmm8                          #  5     0x13  5      OPC=vpmovsxdq_xmm_xmm      
  callq .move_128_256_xmm8_xmm9_ymm1              #  6     0x18  5      OPC=callq_label            
  retq                                            #  7     0x1d  1      OPC=retq                   
                                                                                                   
.size target, .-target
