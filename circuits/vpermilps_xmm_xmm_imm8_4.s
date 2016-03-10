  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vbroadcastss %xmm2, %xmm1        #  1     0    5      OPC=vbroadcastss_xmm_xmm     
  vpunpcklqdq %xmm1, %xmm2, %xmm8  #  2     0x5  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  movapd %xmm8, %xmm1              #  3     0x9  5      OPC=movapd_xmm_xmm           
  retq                             #  4     0xe  1      OPC=retq                     
                                                                                     
.size target, .-target
