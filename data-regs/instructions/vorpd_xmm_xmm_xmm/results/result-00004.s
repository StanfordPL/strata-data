  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r8_r9    #  1     0     5      OPC=callq_label    
  callq .move_128_064_xmm3_r12_r13  #  2     0x5   5      OPC=callq_label    
  vmovd %r8d, %xmm1                 #  3     0xa   5      OPC=vmovd_xmm_r32  
  orq %r13, %r9                     #  4     0xf   3      OPC=orq_r64_r64    
  orq %r12, %r8                     #  5     0x12  3      OPC=orq_r64_r64    
  callq .move_064_128_r8_r9_xmm1    #  6     0x15  5      OPC=callq_label    
  retq                              #  7     0x1a  1      OPC=retq           
                                                                             
.size target, .-target
