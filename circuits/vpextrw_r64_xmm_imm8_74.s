  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode             
.target:                                        #        0     0      OPC=<label>        
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label    
  incl %r10d                                    #  2     0x5   3      OPC=incl_r32       
  callq .read_zf_into_rbx                       #  3     0x8   5      OPC=callq_label    
  xchgw %r11w, %bx                              #  4     0xd   4      OPC=xchgw_r16_r16  
  retq                                          #  5     0x11  1      OPC=retq           
                                                                                         
.size target, .-target
