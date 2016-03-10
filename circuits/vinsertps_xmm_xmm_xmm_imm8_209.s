  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d      #  1     0     5      OPC=callq_label              
  vcvtsi2ssl %r8d, %xmm2, %xmm6                 #  2     0x5   5      OPC=vcvtsi2ssl_xmm_xmm_r32   
  vpunpckhqdq %xmm6, %xmm3, %xmm13              #  3     0xa   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  4     0xe   5      OPC=callq_label              
  vcvtsd2ss %xmm7, %xmm13, %xmm1                #  5     0x13  4      OPC=vcvtsd2ss_xmm_xmm_xmm    
  retq                                          #  6     0x17  1      OPC=retq                     
                                                                                                   
.size target, .-target
