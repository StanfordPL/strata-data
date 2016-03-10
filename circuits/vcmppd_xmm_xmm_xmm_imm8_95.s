  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vzeroall                          #  1     0     3      OPC=vzeroall           
  callq .move_128_064_xmm2_r12_r13  #  2     0x3   5      OPC=callq_label        
  notq %r12                         #  3     0x8   3      OPC=notq_r64           
  sarb $0x1, %r13b                  #  4     0xb   3      OPC=sarb_r8_one        
  callq .move_064_128_r12_r13_xmm2  #  5     0xe   5      OPC=callq_label        
  vpmovsxdq %xmm2, %ymm4            #  6     0x13  5      OPC=vpmovsxdq_ymm_xmm  
  vmovaps %xmm4, %xmm1              #  7     0x18  4      OPC=vmovaps_xmm_xmm    
  retq                              #  8     0x1c  1      OPC=retq               
                                                                                 
.size target, .-target
