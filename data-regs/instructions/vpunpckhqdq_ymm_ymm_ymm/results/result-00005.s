  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  callq .move_128_064_xmm2_r8_r9  #  1     0    5      OPC=callq_label            
  cvtsi2ssl %r8d, %xmm3           #  2     0x5  5      OPC=cvtsi2ssl_xmm_r32      
  vunpckhpd %ymm3, %ymm2, %ymm1   #  3     0xa  4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                            #  4     0xe  1      OPC=retq                   
                                                                                  
.size target, .-target
