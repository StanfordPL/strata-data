  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label        
  vzeroall                          #  2     0x5   3      OPC=vzeroall           
  vmovmskpd %xmm10, %r12            #  3     0x8   5      OPC=vmovmskpd_r64_xmm  
  notq %r12                         #  4     0xd   3      OPC=notq_r64           
  callq .move_064_128_r12_r13_xmm1  #  5     0x10  5      OPC=callq_label        
  retq                              #  6     0x15  1      OPC=retq               
                                                                                 
.size target, .-target
