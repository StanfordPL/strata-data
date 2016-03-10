  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label        
  xchgq %r12, %r13                  #  2     0x5   3      OPC=xchgq_r64_r64      
  callq .move_064_128_r12_r13_xmm2  #  3     0x8   5      OPC=callq_label        
  vmovsldup %xmm2, %xmm1            #  4     0xd   4      OPC=vmovsldup_xmm_xmm  
  retq                              #  5     0x11  1      OPC=retq               
                                                                                 
.size target, .-target
