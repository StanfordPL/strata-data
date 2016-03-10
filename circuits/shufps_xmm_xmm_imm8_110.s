  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm1, %xmm9, %xmm11                  #  2     0x5   4      OPC=vunpcklps_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm2  #  3     0x9   5      OPC=callq_label            
  unpckhpd %xmm2, %xmm1                           #  4     0xe   4      OPC=unpckhpd_xmm_xmm       
  retq                                            #  5     0x12  1      OPC=retq                   
                                                                                                   
.size target, .-target
