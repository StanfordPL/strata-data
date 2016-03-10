  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpckhpd %xmm9, %xmm2, %xmm10                  #  2     0x5   5      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d        #  3     0xa   5      OPC=callq_label            
  movd %edx, %xmm9                                #  4     0xf   5      OPC=movd_xmm_r32           
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x14  5      OPC=callq_label            
  retq                                            #  6     0x19  1      OPC=retq                   
                                                                                                   
.size target, .-target
