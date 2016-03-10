  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpmovsxdq %xmm2, %ymm5                          #  2     0x5   5      OPC=vpmovsxdq_ymm_xmm        
  vunpckhps %xmm2, %xmm5, %xmm2                   #  3     0xa   4      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpcklqdq %xmm2, %xmm5, %xmm15                #  4     0xe   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vunpcklps %xmm8, %xmm9, %xmm10                  #  5     0x12  5      OPC=vunpcklps_xmm_xmm_xmm    
  vmaxsd %xmm10, %xmm15, %xmm11                   #  6     0x17  5      OPC=vmaxsd_xmm_xmm_xmm       
  movdqa %xmm11, %xmm1                            #  7     0x1c  5      OPC=movdqa_xmm_xmm           
  retq                                            #  8     0x21  1      OPC=retq                     
                                                                                                     
.size target, .-target
