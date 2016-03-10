  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  unpcklps %xmm2, %xmm10                          #  2     0x5   4      OPC=unpcklps_xmm_xmm         
  vunpckhpd %xmm3, %xmm3, %xmm1                   #  3     0x9   4      OPC=vunpckhpd_xmm_xmm_xmm    
  vpunpcklqdq %xmm1, %xmm10, %xmm1                #  4     0xd   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                            #  5     0x11  1      OPC=retq                     
                                                                                                     
.size target, .-target
