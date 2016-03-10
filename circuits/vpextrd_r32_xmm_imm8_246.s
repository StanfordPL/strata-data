  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                
.target:                               #        0    0      OPC=<label>           
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0    5      OPC=callq_label       
  pmovzxdq %xmm11, %xmm10              #  2     0x5  6      OPC=pmovzxdq_xmm_xmm  
  vmovd %xmm10, %ebx                   #  3     0xb  4      OPC=vmovd_r32_xmm     
  retq                                 #  4     0xf  1      OPC=retq              
                                                                                  
.size target, .-target
