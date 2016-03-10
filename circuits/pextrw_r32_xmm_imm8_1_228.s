  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label      
  xorl %ebx, %ebx                               #  2     0x5   2      OPC=xorl_r32_r32     
  cmovnlw %r12w, %r11w                          #  3     0x7   5      OPC=cmovnlw_r16_r16  
  cmovaew %r11w, %bx                            #  4     0xc   5      OPC=cmovaew_r16_r16  
  retq                                          #  5     0x11  1      OPC=retq             
                                                                                           
.size target, .-target
