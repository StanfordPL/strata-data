  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vxorps %xmm15, %xmm15, %xmm2                  #  1     0     5      OPC=vxorps_xmm_xmm_xmm  
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  2     0x5   5      OPC=callq_label         
  xchgw %cx, %r12w                              #  3     0xa   4      OPC=xchgw_r16_r16       
  cmovnlel %r12d, %ebx                          #  4     0xe   4      OPC=cmovnlel_r32_r32    
  retq                                          #  5     0x12  1      OPC=retq                
                                                                                              
.size target, .-target
