  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label     
  movdqa %xmm3, %xmm2             #  2     0x5   4      OPC=movdqa_xmm_xmm  
  movq %xmm2, %r8                 #  3     0x9   5      OPC=movq_r64_xmm    
  vzeroall                        #  4     0xe   3      OPC=vzeroall        
  callq .move_064_128_r8_r9_xmm1  #  5     0x11  5      OPC=callq_label     
  retq                            #  6     0x16  1      OPC=retq            
                                                                            
.size target, .-target
