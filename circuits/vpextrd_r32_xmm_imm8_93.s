  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label           
  pmovsxdq %xmm12, %xmm9               #  2     0x5   6      OPC=pmovsxdq_xmm_xmm      
  vmovhlps %xmm9, %xmm13, %xmm12       #  3     0xb   5      OPC=vmovhlps_xmm_xmm_xmm  
  movd %xmm12, %ebx                    #  4     0x10  5      OPC=movd_r32_xmm          
  retq                                 #  5     0x15  1      OPC=retq                  
                                                                                       
.size target, .-target
