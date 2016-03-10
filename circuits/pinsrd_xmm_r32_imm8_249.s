  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  movd %ebx, %xmm7                     #  1     0     4      OPC=movd_xmm_r32       
  vmovddup %xmm7, %xmm12               #  2     0x4   4      OPC=vmovddup_xmm_xmm   
  callq .move_128_64_xmm1_xmm10_xmm11  #  3     0x8   5      OPC=callq_label        
  punpckldq %xmm12, %xmm10             #  4     0xd   5      OPC=punpckldq_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  5     0x12  5      OPC=callq_label        
  retq                                 #  6     0x17  1      OPC=retq               
                                                                                    
.size target, .-target
