  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode             
.target:                                          #        0     0      OPC=<label>        
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label    
  callq .move_64_128_xmm8_xmm9_xmm2               #  2     0x5   5      OPC=callq_label    
  callq .move_128_032_xmm2_eax_edx_r8d_r9d        #  3     0xa   5      OPC=callq_label    
  movzbl %ah, %ebx                                #  4     0xf   3      OPC=movzbl_r32_rh  
  retq                                            #  5     0x12  1      OPC=retq           
                                                                                           
.size target, .-target
