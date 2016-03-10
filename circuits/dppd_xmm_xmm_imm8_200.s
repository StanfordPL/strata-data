  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP  Bytes  Opcode                     
.target:                                          #        0    0      OPC=<label>                
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label            
  vunpckhpd %xmm9, %xmm11, %xmm7                  #  2     0x5  5      OPC=vunpckhpd_xmm_xmm_xmm  
  cvtdq2pd %xmm7, %xmm1                           #  3     0xa  4      OPC=cvtdq2pd_xmm_xmm       
  retq                                            #  4     0xe  1      OPC=retq                   
                                                                                                  
.size target, .-target
