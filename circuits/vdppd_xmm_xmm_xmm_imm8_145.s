  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                   
.target:                            #        0     0      OPC=<label>              
  mulsd %xmm3, %xmm2                #  1     0     4      OPC=mulsd_xmm_xmm        
  callq .move_128_064_xmm2_r12_r13  #  2     0x4   5      OPC=callq_label          
  vzeroall                          #  3     0x9   3      OPC=vzeroall             
  vmovq %r12, %xmm8                 #  4     0xc   5      OPC=vmovq_xmm_r64        
  vhaddpd %ymm0, %ymm8, %ymm1       #  5     0x11  4      OPC=vhaddpd_ymm_ymm_ymm  
  retq                              #  6     0x15  1      OPC=retq                 
                                                                                   
.size target, .-target
