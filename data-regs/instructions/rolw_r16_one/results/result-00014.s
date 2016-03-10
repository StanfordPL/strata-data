  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP  Bytes  Opcode            
.target:                            #        0    0      OPC=<label>       
  callq .move_016_008_bx_r12b_r13b  #  1     0    5      OPC=callq_label   
  shlb $0x1, %r13b                  #  2     0x5  3      OPC=shlb_r8_one   
  adcw %bx, %bx                     #  3     0x8  3      OPC=adcw_r16_r16  
  retq                              #  4     0xb  1      OPC=retq          
                                                                           
.size target, .-target
