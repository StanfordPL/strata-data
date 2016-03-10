  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  vsubss %xmm1, %xmm1, %xmm2                #  1     0     4      OPC=vsubss_xmm_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label         
  movzbl %dh, %ebx                          #  3     0x9   3      OPC=movzbl_r32_rh       
  xchgb %bl, %al                            #  4     0xc   2      OPC=xchgb_r8_r8         
  xchgw %dx, %bx                            #  5     0xe   3      OPC=xchgw_r16_r16       
  retq                                      #  6     0x11  1      OPC=retq                
                                                                                          
.size target, .-target
