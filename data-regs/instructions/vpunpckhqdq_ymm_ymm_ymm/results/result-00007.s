  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP  Bytes  Opcode                     
.target:                                          #        0    0      OPC=<label>                
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label            
  cvtsd2ss %xmm10, %xmm2                          #  2     0x5  5      OPC=cvtsd2ss_xmm_xmm       
  vunpckhpd %ymm3, %ymm2, %ymm1                   #  3     0xa  4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                                            #  4     0xe  1      OPC=retq                   
                                                                                                  
.size target, .-target
