  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label       
  vzeroall                          #  2     0x5   3      OPC=vzeroall          
  callq .move_064_128_r12_r13_xmm1  #  3     0x8   5      OPC=callq_label       
  vrsqrtps %ymm1, %ymm8             #  4     0xd   4      OPC=vrsqrtps_ymm_ymm  
  movdqa %xmm3, %xmm1               #  5     0x11  4      OPC=movdqa_xmm_xmm    
  pxor %xmm8, %xmm1                 #  6     0x15  5      OPC=pxor_xmm_xmm      
  retq                              #  7     0x1a  1      OPC=retq              
                                                                                
.size target, .-target
