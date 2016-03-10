  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  vmovshdup %xmm1, %xmm3                          #  1     0     4      OPC=vmovshdup_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label        
  pmovzxdq %xmm8, %xmm7                           #  3     0x9   6      OPC=pmovzxdq_xmm_xmm   
  vmovq %xmm7, %rbx                               #  4     0xf   5      OPC=vmovq_r64_xmm      
  retq                                            #  5     0x14  1      OPC=retq               
                                                                                               
.size target, .-target
