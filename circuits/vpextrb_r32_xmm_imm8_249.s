  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode             
.target:                                          #        0     0      OPC=<label>        
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label    
  maxss %xmm11, %xmm11                            #  2     0x5   5      OPC=maxss_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm3            #  3     0xa   5      OPC=callq_label    
  callq .move_128_032_xmm3_eax_edx_r8d_r9d        #  4     0xf   5      OPC=callq_label    
  xorq %rbx, %rbx                                 #  5     0x14  3      OPC=xorq_r64_r64   
  adcb %ah, %bl                                   #  6     0x17  2      OPC=adcb_r8_rh     
  retq                                            #  7     0x19  1      OPC=retq           
                                                                                           
.size target, .-target
