  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode             
.target:                          #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label    
  shlw $0x1, %r9w                 #  2     0x5   4      OPC=shlw_r16_one   
  vzeroall                        #  3     0x9   3      OPC=vzeroall       
  rorb $0x1, %r9b                 #  4     0xc   3      OPC=rorb_r8_one    
  xchgw %bx, %r9w                 #  5     0xf   4      OPC=xchgw_r16_r16  
  callq .move_064_128_r8_r9_xmm1  #  6     0x13  5      OPC=callq_label    
  retq                            #  7     0x18  1      OPC=retq           
                                                                           
.size target, .-target
