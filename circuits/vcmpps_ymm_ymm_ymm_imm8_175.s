  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  vzeroall                        #  1     0     3      OPC=vzeroall           
  callq .move_128_064_xmm2_r8_r9  #  2     0x3   5      OPC=callq_label        
  notq %r8                        #  3     0x8   3      OPC=notq_r64           
  callq .move_064_128_r8_r9_xmm1  #  4     0xb   5      OPC=callq_label        
  vpmovsxwq %xmm1, %ymm1          #  5     0x10  5      OPC=vpmovsxwq_ymm_xmm  
  retq                            #  6     0x15  1      OPC=retq               
                                                                               
.size target, .-target
