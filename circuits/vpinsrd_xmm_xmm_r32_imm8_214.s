  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  callq .move_128_064_xmm2_r8_r9                  #  2     0x5   5      OPC=callq_label            
  vunpckhps %xmm2, %xmm10, %xmm4                  #  3     0xa   4      OPC=vunpckhps_xmm_xmm_xmm  
  xaddl %r9d, %ebx                                #  4     0xe   4      OPC=xaddl_r32_r32          
  vmovhlps %xmm11, %xmm4, %xmm13                  #  5     0x12  5      OPC=vmovhlps_xmm_xmm_xmm   
  callq .move_064_128_r8_r9_xmm2                  #  6     0x17  5      OPC=callq_label            
  vxorpd %xmm13, %xmm2, %xmm1                     #  7     0x1c  5      OPC=vxorpd_xmm_xmm_xmm     
  retq                                            #  8     0x21  1      OPC=retq                   
                                                                                                   
.size target, .-target
