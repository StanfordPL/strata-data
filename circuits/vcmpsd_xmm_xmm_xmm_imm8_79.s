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
  movmskpd %xmm6, %r12              #  3     0x8   5      OPC=movmskpd_r64_xmm   
  decq %r12                         #  4     0xd   3      OPC=decq_r64           
  vcvtps2pd %xmm2, %xmm1            #  5     0x10  4      OPC=vcvtps2pd_xmm_xmm  
  callq .move_064_128_r12_r13_xmm1  #  6     0x14  5      OPC=callq_label        
  retq                              #  7     0x19  1      OPC=retq               
                                                                                 
.size target, .-target
