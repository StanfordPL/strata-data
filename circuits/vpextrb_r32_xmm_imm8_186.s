  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode             
.target:                                        #        0     0      OPC=<label>        
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label    
  movd %xmm6, %edx                              #  2     0x5   4      OPC=movd_r32_xmm   
  xaddw %dx, %dx                                #  3     0x9   4      OPC=xaddw_r16_r16  
  callq .move_032_016_edx_r10w_r11w             #  4     0xd   5      OPC=callq_label    
  movzbl %r11b, %ebx                            #  5     0x12  4      OPC=movzbl_r32_r8  
  retq                                          #  6     0x16  1      OPC=retq           
                                                                                         
.size target, .-target
