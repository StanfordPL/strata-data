  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vmovdqa %xmm2, %xmm3              #  1     0     4      OPC=vmovdqa_xmm_xmm     
  callq .move_128_064_xmm3_r12_r13  #  2     0x4   5      OPC=callq_label         
  vzeroall                          #  3     0x9   3      OPC=vzeroall            
  callq .move_064_128_r12_r13_xmm3  #  4     0xc   5      OPC=callq_label         
  vmovss %xmm8, %xmm3, %xmm1        #  5     0x11  5      OPC=vmovss_xmm_xmm_xmm  
  retq                              #  6     0x16  1      OPC=retq                
                                                                                  
.size target, .-target
