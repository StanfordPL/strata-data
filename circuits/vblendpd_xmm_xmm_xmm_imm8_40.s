  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_128_064_xmm2_r8_r9    #  1     0     5      OPC=callq_label     
  callq .move_128_064_xmm2_r12_r13  #  2     0x5   5      OPC=callq_label     
  testw %r12w, %r9w                 #  3     0xa   4      OPC=testw_r16_r16   
  vzeroall                          #  4     0xe   3      OPC=vzeroall        
  incw %r12w                        #  5     0x11  4      OPC=incw_r16        
  cmovaq %r9, %r9                   #  6     0x15  4      OPC=cmovaq_r64_r64  
  callq .move_064_128_r8_r9_xmm1    #  7     0x19  5      OPC=callq_label     
  retq                              #  8     0x1e  1      OPC=retq            
                                                                              
.size target, .-target
