  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vaddss %xmm9, %xmm1, %xmm14                     #  2     0x5   5      OPC=vaddss_xmm_xmm_xmm     
  vunpckhps %xmm14, %xmm2, %xmm9                  #  3     0xa   5      OPC=vunpckhps_xmm_xmm_xmm  
  unpckhpd %xmm10, %xmm9                          #  4     0xf   5      OPC=unpckhpd_xmm_xmm       
  callq .move_64_128_xmm8_xmm9_xmm1               #  5     0x14  5      OPC=callq_label            
  retq                                            #  6     0x19  1      OPC=retq                   
                                                                                                   
.size target, .-target
