  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm8, %xmm11, %xmm1                  #  2     0x5   5      OPC=vunpcklps_xmm_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d        #  3     0xa   5      OPC=callq_label            
  xorq %rbx, %rbx                                 #  4     0xf   3      OPC=xorq_r64_r64           
  orb %ah, %bh                                    #  5     0x12  2      OPC=orb_rh_rh              
  xchgw %ax, %bx                                  #  6     0x14  2      OPC=xchgw_r16_ax           
  retq                                            #  7     0x16  1      OPC=retq                   
                                                                                                   
.size target, .-target
