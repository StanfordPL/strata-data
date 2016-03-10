  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  xorq %rbx, %rbx                                 #  2     0x5   3      OPC=xorq_r64_r64        
  vminps %xmm9, %xmm9, %xmm7                      #  3     0x8   5      OPC=vminps_xmm_xmm_xmm  
  pmovzxwq %xmm7, %xmm3                           #  4     0xd   5      OPC=pmovzxwq_xmm_xmm    
  callq .move_128_064_xmm3_r12_r13                #  5     0x12  5      OPC=callq_label         
  xchgw %r13w, %bx                                #  6     0x17  4      OPC=xchgw_r16_r16       
  retq                                            #  7     0x1b  1      OPC=retq                
                                                                                                
.size target, .-target
