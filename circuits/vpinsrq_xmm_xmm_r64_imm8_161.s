  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode             
.target:                          #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label    
  xorq %r9, %r9                   #  2     0x5   3      OPC=xorq_r64_r64   
  vzeroall                        #  3     0x8   3      OPC=vzeroall       
  xaddq %r9, %rbx                 #  4     0xb   4      OPC=xaddq_r64_r64  
  callq .move_064_128_r8_r9_xmm1  #  5     0xf   5      OPC=callq_label    
  retq                            #  6     0x14  1      OPC=retq           
                                                                           
.size target, .-target
