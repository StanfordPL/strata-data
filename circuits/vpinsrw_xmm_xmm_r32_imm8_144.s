  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  testb %bh, %bh                    #  1     0     2      OPC=testb_rh_rh      
  callq .move_128_064_xmm2_r12_r13  #  2     0x2   5      OPC=callq_label      
  cmovncw %bx, %r12w                #  3     0x7   5      OPC=cmovncw_r16_r16  
  vzeroall                          #  4     0xc   3      OPC=vzeroall         
  callq .move_064_128_r12_r13_xmm1  #  5     0xf   5      OPC=callq_label      
  retq                              #  6     0x14  1      OPC=retq             
                                                                               
.size target, .-target
