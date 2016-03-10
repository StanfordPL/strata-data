  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vmovss %xmm8, %xmm2, %xmm5                      #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm     
  movdqa %xmm5, %xmm1                             #  3     0xa   4      OPC=movdqa_xmm_xmm         
  unpckhpd %xmm2, %xmm2                           #  4     0xe   4      OPC=unpckhpd_xmm_xmm       
  vmovss %xmm10, %xmm2, %xmm7                     #  5     0x12  5      OPC=vmovss_xmm_xmm_xmm     
  vunpcklpd %xmm7, %xmm1, %xmm1                   #  6     0x17  4      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                            #  7     0x1b  1      OPC=retq                   
                                                                                                   
.size target, .-target
