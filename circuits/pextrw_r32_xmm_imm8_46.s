  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  xorl %edi, %edi                               #  1     0     2      OPC=xorl_r32_r32     
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  2     0x2   5      OPC=callq_label      
  callq .read_of_into_rbx                       #  3     0x7   5      OPC=callq_label      
  cmovnbw %r13w, %bx                            #  4     0xc   5      OPC=cmovnbw_r16_r16  
  retq                                          #  5     0x11  1      OPC=retq             
                                                                                           
.size target, .-target
