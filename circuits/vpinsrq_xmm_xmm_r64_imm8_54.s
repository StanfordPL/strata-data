  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode             
.target:                          #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label    
  orb %bl, %bl                    #  2     0x5   2      OPC=orb_r8_r8      
  vzeroall                        #  3     0x7   3      OPC=vzeroall       
  xaddq %r8, %rbx                 #  4     0xa   4      OPC=xaddq_r64_r64  
  callq .move_064_128_r8_r9_xmm1  #  5     0xe   5      OPC=callq_label    
  retq                            #  6     0x13  1      OPC=retq           
                                                                           
.size target, .-target
