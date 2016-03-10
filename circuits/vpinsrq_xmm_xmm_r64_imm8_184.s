  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  callq .set_cf                   #  1     0     5      OPC=callq_label     
  callq .move_128_064_xmm2_r8_r9  #  2     0x5   5      OPC=callq_label     
  vzeroall                        #  3     0xa   3      OPC=vzeroall        
  cmovcq %rbx, %r8                #  4     0xd   4      OPC=cmovcq_r64_r64  
  callq .move_064_128_r8_r9_xmm1  #  5     0x11  5      OPC=callq_label     
  retq                            #  6     0x16  1      OPC=retq            
                                                                            
.size target, .-target
