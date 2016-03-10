  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                
.target:                               #        0    0      OPC=<label>           
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0    5      OPC=callq_label       
  movapd %xmm11, %xmm14                #  2     0x5  5      OPC=movapd_xmm_xmm    
  unpcklpd %xmm14, %xmm1               #  3     0xa  5      OPC=unpcklpd_xmm_xmm  
  retq                                 #  4     0xf  1      OPC=retq              
                                                                                  
.size target, .-target
