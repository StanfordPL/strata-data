  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  pmovzxdq %xmm10, %xmm2               #  2     0x5   6      OPC=pmovzxdq_xmm_xmm         
  vmovd %ebx, %xmm3                    #  3     0xb   4      OPC=vmovd_xmm_r32            
  vunpcklps %xmm3, %xmm2, %xmm1        #  4     0xf   4      OPC=vunpcklps_xmm_xmm_xmm    
  vpunpcklqdq %xmm11, %xmm1, %xmm1     #  5     0x13  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                 #  6     0x18  1      OPC=retq                     
                                                                                          
.size target, .-target
