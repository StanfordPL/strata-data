  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vxorps %xmm8, %xmm8, %xmm2                    #  1     0     5      OPC=vxorps_xmm_xmm_xmm  
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  2     0x5   5      OPC=callq_label         
  adcb %r13b, %r13b                             #  3     0xa   3      OPC=adcb_r8_r8          
  cmovnzl %ecx, %ebx                            #  4     0xd   3      OPC=cmovnzl_r32_r32     
  retq                                          #  5     0x10  1      OPC=retq                
                                                                                              
.size target, .-target
