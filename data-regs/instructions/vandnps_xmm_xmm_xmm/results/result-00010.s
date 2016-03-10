  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  pandn %xmm3, %xmm2                   #  1     0     4      OPC=pandn_xmm_xmm            
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x4   5      OPC=callq_label              
  vpunpckhqdq %xmm11, %xmm10, %xmm2    #  3     0x9   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vpunpcklqdq %xmm2, %xmm10, %xmm1     #  4     0xe   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  movlhps %xmm11, %xmm1                #  5     0x12  4      OPC=movlhps_xmm_xmm          
  retq                                 #  6     0x16  1      OPC=retq                     
                                                                                          
.size target, .-target
