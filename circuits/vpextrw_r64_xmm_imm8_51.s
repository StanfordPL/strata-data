  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  pmovzxbd %xmm9, %xmm3                           #  2     0x5   6      OPC=pmovzxbd_xmm_xmm  
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d    #  3     0xb   5      OPC=callq_label       
  movzwl %r11w, %ebx                              #  4     0x10  4      OPC=movzwl_r32_r16    
  callq .move_008_016_r12b_r13b_bx                #  5     0x14  5      OPC=callq_label       
  retq                                            #  6     0x19  1      OPC=retq              
                                                                                              
.size target, .-target
