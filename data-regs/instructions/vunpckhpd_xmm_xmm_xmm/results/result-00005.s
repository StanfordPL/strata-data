  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode             
.target:                              #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r12_r13    #  1     0     5      OPC=callq_label    
  callq .move_128_064_xmm3_r8_r9      #  2     0x5   5      OPC=callq_label    
  vzeroall                            #  3     0xa   3      OPC=vzeroall       
  callq .move_byte_13_of_ymm1_to_r8b  #  4     0xd   5      OPC=callq_label    
  xchgq %r13, %r8                     #  5     0x12  3      OPC=xchgq_r64_r64  
  callq .move_064_128_r8_r9_xmm1      #  6     0x15  5      OPC=callq_label    
  retq                                #  7     0x1a  1      OPC=retq           
                                                                               
.size target, .-target
